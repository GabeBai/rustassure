use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
struct UrlData {
    whole_url: *const c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const UrlKeyValue,
    fragment: *const c_char,
}

impl UrlData {
    fn get_query_value(&self, key: *const c_char) -> Option<&str> {
        if self.query.is_null() {
            return None;
        }

        let mut kv = self.query;
        unsafe {
            while !(*kv).key.is_null() {
                let kv_key = CStr::from_ptr((*kv).key);
                let kv_value = CStr::from_ptr((*kv).value);

                if kv_key.to_bytes() == CStr::from_ptr(key).to_bytes() {
                    return Some(kv_value.to_str().unwrap());
                }

                kv = kv.offset(1);
            }
        }

        None
    }
}
