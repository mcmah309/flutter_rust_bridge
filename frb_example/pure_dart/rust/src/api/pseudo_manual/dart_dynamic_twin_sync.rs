// NOTE: This file is mimicking how a human developer writes tests, 
// and is auto-generated from `dart_dynamic.rs` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

use flutter_rust_bridge::{DartAbi, IntoDart};

#[flutter_rust_bridge::frb(sync)] pub fn return_dart_dynamic_twin_sync() -> DartAbi {
    vec!["foo".into_dart()].into_dart()
}
