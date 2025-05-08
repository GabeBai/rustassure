use std::ffi::CString;

struct url_key_value {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
pub struct url_data {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

#[link(name = "c")]
extern {
    fn url_parse(url: *const i8) -> *mut url_data;
    fn url_free(data: *mut url_data);
    fn strdup(s: *const i8) -> *mut i8;
}

pub fn url_get_path(url: *const i8) -> *mut i8 {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).path.is_null() {
            strdup((*data).path)
        } else {
            std::ptr::null_mut()
        };
        url_free(data);
        out
    }
}
