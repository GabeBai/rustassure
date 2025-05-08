use std::ffi::CString;

struct url_key_value {
    key: *const i8,
    value: *const i8,
}

struct url_data {
    whole_url: *const i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

extern "C" {
    fn url_parse(url: *const i8) -> *mut url_data;
    fn url_free(data: *mut url_data);
}

fn url_get_host(url: *const i8) -> String {
    unsafe {
        let data = url_parse(url);
        let host = if !data.is_null() && !(*data).host.is_null() {
            CString::from_raw((*data).host as *mut i8).into_string().unwrap()
        } else {
            String::new()
        };
        url_free(data);
        host
    }
}
