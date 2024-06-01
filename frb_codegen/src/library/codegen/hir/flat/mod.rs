use crate::codegen::hir::hierarchical::struct_or_enum::{HirEnum, HirStruct};
use std::collections::HashMap;
use syn::Type;

pub(crate) struct HirFlatCrate<'a> {
    pub structs: HashMap<String, &'a HirStruct>,
    pub enums: HashMap<String, &'a HirEnum>,
    pub types: HashMap<String, Type>,
}
