use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct url_key_value;

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

    assert!(!parsed.is_null(), "parsed");
    assert!(!gh_parsed.is_null(), "gh_parsed");

    unsafe {
        url_data_inspect(parsed);
        url_data_inspect(gh_parsed);

        let parsed_whole_url = CStr::from_ptr((*parsed).whole_url).to_str().unwrap();
        let parsed_protocol = CStr::from_ptr((*parsed).protocol).to_str().unwrap();
        let parsed_userinfo = CStr::from_ptr((*parsed).userinfo).to_str().unwrap();
        let parsed_host = CStr::from_ptr((*parsed).host).to_str().unwrap();
        let parsed_port = CStr::from_ptr((*parsed).port).to_str().unwrap();
        let parsed_path = CStr::from_ptr((*parsed).path).to_str().unwrap();
        let parsed_query = CStr::from_ptr(url_get_query_value(parsed, "quëry\0".as_ptr() as *const c_char)).to_str().unwrap();
        let parsed_fragment = CStr::from_ptr((*parsed).fragment).to_str().unwrap();

        // Add more assertions as needed

        url_free(parsed);
        url_free(gh_parsed);
    }
}
