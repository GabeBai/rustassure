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
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

fn url_parse(url: &str) -> UrlData {
    // Placeholder for actual parsing logic
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

fn url_data_inspect(data: &UrlData) {
    println!("{:?}", data);
}

fn url_inspect(url: &str) {
    let data = url_parse(url);
    url_data_inspect(&data);
}

// Example usage
fn main() {
    let url = "http://example.com";
    url_inspect(url);
}
