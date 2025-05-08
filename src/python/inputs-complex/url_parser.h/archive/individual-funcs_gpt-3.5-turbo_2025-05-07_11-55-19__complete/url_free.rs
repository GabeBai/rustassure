use std::alloc::{dealloc, Layout};
use std::ptr;

struct UrlKeyValue {
    key: *const std::os::raw::c_char,
    value: *const std::os::raw::c_char,
}

struct UrlData {
    whole_url: *mut std::os::raw::c_char,
    protocol: *const std::os::raw::c_char,
    userinfo: *const std::os::raw::c_char,
    host: *const std::os::raw::c_char,
    port: *const std::os::raw::c_char,
    path: *const std::os::raw::c_char,
    query: *const UrlKeyValue,
    fragment: *const std::os::raw::c_char,
}

impl UrlData {
    fn url_free(data: *mut UrlData) {
        if data.is_null() {
            return;
        }

        unsafe {
            dealloc((*data).whole_url as *mut u8, Layout::array::<u8>((*data).whole_url as usize).unwrap());
            dealloc((*data).query as *mut u8, Layout::array::<u8>((*data).query as usize).unwrap());
            dealloc(data as *mut u8, Layout::new::<UrlData>());
        }
    }
}
