use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct url_key_value {
    // Define the struct if needed
}

#[repr(C)]
struct url_data {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const url_key_value,
    fragment: *const c_char,
}

extern {
    fn url_parse(url: *const c_char) -> *mut url_data;
    fn url_get_userinfo(url: *const c_char) -> *mut c_char;
    fn url_get_hostname(url: *const c_char) -> *mut c_char;
    fn url_get_path(url: *const c_char) -> *mut c_char;
    fn url_get_query_value(url: *const url_data, key: *const c_char) -> *const c_char;
    fn url_get_fragment(url: *const c_char) -> *mut c_char;
    fn url_get_port(url: *const c_char) -> *mut c_char;
    fn url_free(data: *mut url_data);
    fn url_is_protocol(str: *const c_char) -> bool;
    fn url_data_inspect(data: *const url_data);
}

fn main() {
    let gh_url = "git://git@github.com:jwerle/url.h.git\0".as_ptr() as *const c_char;
    let url = "http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%a6sh\0".as_ptr() as *const c_char;

    let parsed = unsafe { url_parse(url) };
    let gh_parsed = unsafe { url_parse(gh_url) };

    // Add the rest of the code here

    unsafe {
        url_free(parsed);
        url_free(gh_parsed);
    }
}
