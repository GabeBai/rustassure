use std::ffi::CString;
use std::ptr;

#[derive(Debug)]
struct UrlKeyValue {
    key: Option<String>,
    value: Option<String>,
}

#[derive(Debug)]
struct UrlData {
    whole_url: String,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<UrlKeyValue>,
    fragment: Option<String>,
}

impl Drop for UrlData {
    fn drop(&mut self) {
        // Clean up resources when UrlData is dropped
        println!("Dropping UrlData: {}", self.whole_url);
    }
}

fn url_parse(url: &str) -> Option<UrlData> {
    // Implement the url_parse function here
    // This function should parse the URL and populate the UrlData struct
    // Return Some(UrlData) if parsing is successful, None otherwise
    unimplemented!()
}

fn url_get_userinfo(url: &str) -> Option<String> {
    if let Some(data) = url_parse(url) {
        return data.userinfo;
    }
    None
}

fn main() {
    let url = "https://example.com/user:password@example.com:8080/path?query=value#fragment";
    if let Some(userinfo) = url_get_userinfo(url) {
        println!("Userinfo: {}", userinfo);
    } else {
        println!("Userinfo not found in the URL");
    }
}
