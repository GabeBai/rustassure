use std::ffi::{CString, CStr};
use std::os::raw::c_char;

#[repr(C)]
struct UrlData {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const c_char,
    fragment: *const c_char,
}

// Assuming these functions are defined elsewhere
extern "C" {
    fn url_parse(url: *const c_char) -> *mut UrlData;
    fn url_get_userinfo(url: *const c_char) -> *mut c_char;
    fn url_get_hostname(url: *const c_char) -> *mut c_char;
    fn url_get_path(url: *const c_char) -> *mut c_char;
    fn url_get_query_value(url: *const UrlData, key: *const c_char) -> *mut c_char;
    fn url_get_fragment(url: *const c_char) -> *mut c_char;
    fn url_get_port(url: *const c_char) -> *mut c_char;
    fn url_free(data: *mut UrlData);
    fn url_is_protocol(str: *const c_char) -> bool;
    fn url_data_inspect(data: *const UrlData);
}

fn main() {
    let gh_url = CString::new("git://git@github.com:jwerle/url.h.git").unwrap();
    let url = CString::new("http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%A6sh").unwrap();

    unsafe {
        let parsed = url_parse(url.as_ptr());
        let gh_parsed = url_parse(gh_url.as_ptr());

        assert!(!parsed.is_null(), "parsed is null");
        assert!(!gh_parsed.is_null(), "gh_parsed is null");

        url_data_inspect(parsed);
        url_data_inspect(gh_parsed);

        assert!(!(*parsed).whole_url.is_null(), "parsed->whole_url is null");
        assert!(!(*parsed).protocol.is_null(), "parsed->protocol is null");
        assert!(!(*parsed).userinfo.is_null(), "parsed->userinfo is null");
        assert!(!(*parsed).host.is_null(), "parsed->host is null");
        assert!(!(*parsed).port.is_null(), "parsed->port is null");
        assert!(!(*parsed).path.is_null(), "parsed->path is null");
        assert!(!(*parsed).query.is_null(), "parsed->query is null");
        assert!(!(*parsed).fragment.is_null(), "parsed->fragment is null");

        assert!(!(*gh_parsed).whole_url.is_null(), "gh_parsed->whole_url is null");
        assert!(!(*gh_parsed).protocol.is_null(), "gh_parsed->protocol is null");
        assert!(!(*gh_parsed).userinfo.is_null(), "gh_parsed->userinfo is null");
        assert!(!(*gh_parsed).host.is_null(), "gh_parsed->host is null");
        assert!(!(*gh_parsed).path.is_null(), "gh_parsed->path is null");

        assert!(url_is_protocol(CString::new("http").unwrap().as_ptr()), "url_is_protocol(\"http\") failed");
        assert!(url_is_protocol(CString::new("https").unwrap().as_ptr()), "url_is_protocol(\"https\") failed");
        assert!(url_is_protocol(CString::new("git").unwrap().as_ptr()), "url_is_protocol(\"git\") failed");
        assert!(url_is_protocol(CString::new("ssh").unwrap().as_ptr()), "url_is_protocol(\"ssh\") failed");
        assert!(url_is_protocol(CString::new("sftp").unwrap().as_ptr()), "url_is_protocol(\"sftp\") failed");
        assert!(url_is_protocol(CString::new("ftp").unwrap().as_ptr()), "url_is_protocol(\"ftp\") failed");
        assert!(url_is_protocol(CString::new("javascript").unwrap().as_ptr()), "url_is_protocol(\"javascript\") failed");

        // Example of getting and checking values
        let s = url_get_userinfo(url.as_ptr());
        assert!(!s.is_null(), "userinfo is null");
        assert_eq!(CStr::from_ptr(s).to_str().unwrap(), "user:pass");

        // Continue with other checks similarly...
        
        // Free the parsed data
        url_free(parsed);
        url_free(gh_parsed);
    }
}
