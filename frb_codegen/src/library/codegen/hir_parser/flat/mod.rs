use crate::codegen::hir::flat::HirFlatCrate;
use crate::codegen::hir::hierarchical::module::HirModule;
use crate::codegen::hir::hierarchical::struct_or_enum::HirEnum;
use crate::codegen::hir::hierarchical::struct_or_enum::HirStruct;
use log::debug;
use std::collections::HashMap;
use std::fmt::Debug;
use syn::Type;

pub(crate) fn parse(root_module: &HirModule) -> anyhow::Result<HirFlatCrate> {
    Ok(HirFlatCrate {
        structs: collect_structs(root_module),
        enums: collect_enums(root_module),
        types: collect_types(root_module),
    })
}

fn collect_structs(module: &HirModule) -> HashMap<String, &HirStruct> {
    collect_objects(
        module,
        |module| &module.scope.structs,
        |x| (x.0.ident.to_string(), x),
    )
}

fn collect_enums(module: &HirModule) -> HashMap<String, &HirEnum> {
    collect_objects(
        module,
        |module| &module.scope.enums,
        |x| (x.0.ident.to_string(), x),
    )
}

fn collect_types(module: &HirModule) -> HashMap<String, Type> {
    collect_objects(
        module,
        |module| &module.scope.type_alias,
        |x| (x.ident.clone(), x.target.clone()),
    )
}

fn collect_objects<'a, T: 'a, F, G, V: 'a>(
    module: &'a HirModule,
    f: F,
    extract_entry: G,
) -> HashMap<String, V>
where
    F: Fn(&HirModule) -> &[T],
    G: Fn(&'a T) -> (String, V),
    V: Debug,
{
    let mut ans = HashMap::new();
    visit_modules(module, &mut |module| {
        for item in f(module) {
            let (key, value) = extract_entry(item);
            if let Some(old_value) = ans.get(&key) {
                debug!("Same key={key} has multiple values: {old_value:?} (thrown away) and {value:?} (used). This may or may not be a problem.");
            }
            let _old_value = ans.insert(key, value);
        }
    });
    ans
}

fn visit_modules<'a, F: FnMut(&'a HirModule)>(module: &'a HirModule, f: &mut F) {
    f(module);
    for scope_module in module.scope.modules {
        visit_modules(&scope_module, f);
    }
}
