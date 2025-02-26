use std::ffi::CStr;
use std::ffi::CString;

#[repr(C)]
pub struct url_key_value {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

pub struct url_data {
    whole_url: *const libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const url_key_value,
    fragment: *const libc::c_char,
}

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut url_data;
    fn url_free(data: *mut url_data);
}

fn url_get_userinfo(url: *const libc::c_char) -> Option<String> {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).userinfo.is_null() {
            let userinfo_cstr = CStr::from_ptr((*data).userinfo);
            Some(userinfo_cstr.to_string_lossy().into_owned())
        } else {
            None
        };
        url_free(data);
        out
    }
}

fn main() {
    let url = CString::new("http://example.com/userinfo").expect("CString::new failed");
    let userinfo = url_get_userinfo(url.as_ptr());
    match userinfo {
        Some(info) => println!("Userinfo: {}", info),
        None => println!("No userinfo found"),
    }
}
