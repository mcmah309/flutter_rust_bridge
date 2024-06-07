use crate::codegen::ir::mir::pack::MirPack;
use crate::codegen::ir::mir::ty::delegate::MirTypeDelegate;
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

    todo!();

    Ok(pack)
}
