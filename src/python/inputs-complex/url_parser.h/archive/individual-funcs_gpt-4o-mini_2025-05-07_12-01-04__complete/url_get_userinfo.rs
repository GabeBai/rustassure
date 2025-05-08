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

#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

impl UrlData {
    fn parse(url: &str) -> Option<Self> {
        // Implement the parsing logic here
        // This is a placeholder for the actual parsing logic
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
}

fn url_get_userinfo(url: &str) -> Option<String> {
    if let Some(data) = UrlData::parse(url) {
        data.userinfo.clone() // Assuming userinfo is an Option<String>
    } else {
        None
    }
}

fn main() {
    let url = "http://example.com/userinfo";
    if let Some(userinfo) = url_get_userinfo(url) {
        println!("Userinfo: {}", userinfo);
    } else {
        println!("No userinfo found.");
    }
}
