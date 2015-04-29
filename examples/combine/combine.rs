#![crate_name = "combine"]
#![crate_type = "dylib"]

extern crate libc;
extern crate image;
use libc::{c_char, c_void};
use std::ffi::CStr;
use std::ptr;
use std::str;
use std::boxed;
use std::path::Path;

#[no_mangle]
pub extern fn image_load(raw: *const c_char) -> *mut c_void {
    let path = unsafe { CStr::from_ptr(raw) };
    let image = image::open(Path::new(path)).unwrap();
    boxed::into_raw(image)
}

#[no_mangle]
pub extern fn image_drop(raw: *mut c_void) {
    drop(Box::from_raw(raw));
}
