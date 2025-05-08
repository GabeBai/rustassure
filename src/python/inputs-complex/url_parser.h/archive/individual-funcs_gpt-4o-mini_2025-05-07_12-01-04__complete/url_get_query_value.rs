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
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

impl UrlData {
    fn get_query_value(&self, key: &str) -> Option<&String> {
        if let Some(query) = &self.query {
            for kv in query {
                if kv.key.as_deref() == Some(key) {
                    return kv.value.as_ref();
                }
            }
        }
        None
    }
}

fn main() {
    // Example usage
    let url_data = UrlData {
        whole_url: "http://example.com".to_string(),
        protocol: Some("http".to_string()),
        userinfo: None,
        host: Some("example.com".to_string()),
        port: None,
        path: Some("/path".to_string()),
        query: Some(vec![
            UrlKeyValue {
                key: Some("key1".to_string()),
                value: Some("value1".to_string()),
            },
            UrlKeyValue {
                key: Some("key2".to_string()),
                value: Some("value2".to_string()),
            },
        ]),
        fragment: None,
    };

    if let Some(value) = url_data.get_query_value("key1") {
        println!("Value for key1: {}", value);
    } else {
        println!("Key not found");
    }
}
