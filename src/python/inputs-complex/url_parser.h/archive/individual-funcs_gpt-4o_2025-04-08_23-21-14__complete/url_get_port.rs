#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
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

impl UrlData {
    fn new(url: &str) -> Self {
        // Dummy implementation for parsing
        UrlData {
            whole_url: url.to_string(),
            protocol: None,
            userinfo: None,
            host: None,
            port: None,
            path: None,
            query: None,
            fragment: None,
        }
    }
}

fn url_parse(url: &str) -> UrlData {
    UrlData::new(url)
}

fn url_free(_data: UrlData) {
    // In Rust, memory is managed automatically, so this function is not needed.
}

fn url_get_port(url: &str) -> Option<String> {
    let data = url_parse(url);
    data.port.clone()
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
    Fragment = 0x80, // Changed to avoid duplicate value
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

fn main() {
    let url = "http://example.com:8080";
    if let Some(port) = url_get_port(url) {
        println!("Port: {}", port);
    } else {
        println!("No port found.");
    }
}
