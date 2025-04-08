#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

#[derive(Debug)]
struct UrlData<'a> {
    whole_url: String,
    protocol: &'a str,
    userinfo: &'a str,
    host: &'a str,
    port: &'a str,
    path: &'a str,
    query: Option<&'a [UrlKeyValue]>,
    fragment: &'a str,
}

fn url_get_query_value<'a>(url: &'a UrlData, key: &str) -> Option<&'a str> {
    if let Some(query) = url.query {
        for kv in query {
            if kv.key == key {
                return Some(&kv.value);
            }
        }
    }
    None
}

fn main() {
    let query = [
        UrlKeyValue {
            key: "name".to_string(),
            value: "value".to_string(),
        },
        UrlKeyValue {
            key: "key".to_string(),
            value: "value2".to_string(),
        },
    ];

    let url = UrlData {
        whole_url: "http://example.com".to_string(),
        protocol: "http",
        userinfo: "",
        host: "example.com",
        port: "80",
        path: "/",
        query: Some(&query),
        fragment: "",
    };

    if let Some(value) = url_get_query_value(&url, "key") {
        println!("Found value: {}", value);
    } else {
        println!("Key not found");
    }
}
