use flutter_rust_bridge::frb;
use wasm_bindgen::prelude::*;
use wasm_bindgen::JsValue;

// TODO temp rm
// #[frb(init)]
// pub fn init_app() {
//     flutter_rust_bridge::setup_default_user_utils();
// }

pub fn minimal_adder(a: i32, b: i32) -> i32 {
    a + b
}

// TODO temp demo
// pub fn f(a: Vec<u64>) -> Vec<u64> {
//     a
// }

#[wasm_bindgen]
pub fn hello_func(port: JsValue) {
    flutter_rust_bridge::console_error!("rust hello_func port={port:?}");
}
