use std::ffi::CString;

struct url_key_value {
    key: *const i8,
    value: *const i8,
}

#[repr(C)]
struct url_data {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

extern {
    fn url_parse(url: *const i8) -> *mut url_data;
    fn url_data_inspect(data: *const url_data);
}

fn url_inspect(url: *const i8) {
    unsafe {
        url_data_inspect(url_parse(url));
    }
}

fn main() {}
