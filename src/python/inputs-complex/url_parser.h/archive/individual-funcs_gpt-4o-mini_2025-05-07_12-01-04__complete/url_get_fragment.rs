#[derive(Debug)]
pub struct UrlData {
    whole_url: String,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

#[derive(Debug)]
pub struct UrlKeyValue {
    key: String,
    value: String,
}

pub fn url_get_fragment(url: &str) -> Option<String> {
    let data = url_parse(url);
    data.and_then(|data| data.fragment.clone())
}

fn url_parse(url: &str) -> Option<UrlData> {
    // Implement the parsing logic here
    // This is a placeholder implementation
    Some(UrlData {
        whole_url: url.to_string(),
        protocol: None,
        userinfo: None,
        host: None,
        port: None,
        path: None,
        query: None,
        fragment: None,
    })
}

// Example usage
fn main() {
    let url = "http://example.com/path?query=value#fragment";
    if let Some(fragment) = url_get_fragment(url) {
        println!("Fragment: {}", fragment);
    } else {
        println!("No fragment found.");
    }
}
