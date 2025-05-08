use std::ffi::CString;
use std::ptr;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
pub struct UrlData {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const UrlKeyValue,
    fragment: *const i8,
}

impl UrlData {
    pub fn free(&mut self) {
        if !self.whole_url.is_null() {
            unsafe { CString::from_raw(self.whole_url) }; // Automatically frees the memory
        }
        if !self.query.is_null() {
            unsafe { Box::from_raw(self.query as *mut UrlKeyValue) }; // Automatically frees the memory
        }
    }
}

// Example usage
fn main() {
    // Example of creating and freeing UrlData
    let mut url_data = UrlData {
        whole_url: CString::new("http://example.com").unwrap().into_raw(),
        protocol: ptr::null(),
        userinfo: ptr::null(),
        host: ptr::null(),
        port: ptr::null(),
        path: ptr::null(),
        query: ptr::null(),
        fragment: ptr::null(),
    };

    // Free the allocated memory
    url_data.free();
}
