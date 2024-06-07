use crate::codegen::ir::mir::pack::MirPack;
use crate::codegen::ir::mir::ty::delegate::{MirTypeDelegate, MirTypeDelegateDynTrait};
use crate::codegen::ir::mir::ty::enumeration::{
    MirEnum, MirEnumIdent, MirEnumMode, MirVariant, MirVariantKind,
};
use crate::codegen::ir::mir::ty::structure::MirStruct;
use crate::codegen::ir::mir::ty::MirType;
use crate::if_then_some;
use itertools::Itertools;

pub(crate) fn transform(mut pack: MirPack) -> anyhow::Result<MirPack> {
    let distinct_types = pack.distinct_types(None);

    let ty_dyn_traits = (distinct_types.iter())
        .filter_map(
            |ty| if_then_some!(let MirType::Delegate(MirTypeDelegate::DynTrait(ty)) = ty , ty.clone()),
        )
        .unique_by(|ty| ty.safe_ident())
        .collect_vec();

    for ty_dyn_trait in &ty_dyn_traits {
        handle_ty_dyn_trait(&mut pack, ty_dyn_trait)?;
    }

    Ok(pack)
}

fn handle_ty_dyn_trait(
    pack: &mut MirPack,
    ty_dyn_trait: &MirTypeDelegateDynTrait,
) -> anyhow::Result<()> {
    let interest_impl_types = (pack.trait_impls.iter())
        .filter(|item| item.trait_ty.name == ty_dyn_trait.trait_def_name)
        .map(|item| item.impl_ty.clone())
        .collect_vec();
    let enum_name = ty_dyn_trait.inner_raw().ident;
    let mir_enum = create_enum(&interest_impl_types, &enum_name);

    pack.enum_pool.insert(enum_name, mir_enum);

    Ok(())
}

fn create_enum(interest_impl_types: &[MirType], enum_name: &MirEnumIdent) -> MirEnum {
    let variants = (interest_impl_types.iter())
        .map(|ty| create_enum_variant(ty))
        .collect_vec();

    MirEnum {
        name: enum_name.0.clone(),
        wrapper_name: None,
        comments: vec![],
        variants,
        mode: MirEnumMode::Complex,
        ignore: false,
    }
}

fn create_enum_variant(ty: &MirType) -> MirVariant {
    MirVariant {
        name: todo!(),
        wrapper_name: todo!(),
        comments: vec![],
        kind: MirVariantKind::Struct(MirStruct {
            name: todo!(),
            wrapper_name: None,
            fields: todo!(),
            is_fields_named: false,
            dart_metadata: vec![],
            ignore: false,
            generate_hash: false,
            generate_eq: false,
            comments: vec![],
        }),
    }
}
