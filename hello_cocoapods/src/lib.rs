use std::os::raw::{c_char};
use std::ffi::{CString};

#[no_mangle]
pub extern fn hello_cocoapods() -> *mut c_char {
    CString::new("Hello, CocoaPods!").unwrap().into_raw()
}

#[no_mangle]
pub extern fn destroy_string(s: *mut c_char) {
    unsafe {
        if s.is_null() { return }
        CString::from_raw(s)
    };
}