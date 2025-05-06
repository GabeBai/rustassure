struct UrlKeyValue {
    key: Option<String>,
    value: Option<String>,
}

struct UrlData {
    whole_url: Option<String>,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

impl Drop for UrlData {
    fn drop(&mut self) {
        // Rust will automatically free the memory when the UrlData struct goes out of scope
    }
}

impl UrlData {
    fn url_free(data: Box<UrlData>) {
        // Rust will automatically free the memory when the Box<UrlData> goes out of scope
    }
}

#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn main() {
    // Your main function logic here
}
