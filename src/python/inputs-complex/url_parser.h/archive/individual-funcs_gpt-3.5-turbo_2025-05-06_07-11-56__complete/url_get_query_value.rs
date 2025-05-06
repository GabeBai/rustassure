#[derive(Debug)]
struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

#[derive(Debug)]
struct UrlData<'a> {
    whole_url: String,
    protocol: &'a str,
    userinfo: &'a str,
    host: &'a str,
    port: &'a str,
    path: &'a str,
    query: &'a [UrlKeyValue<'a>],
    fragment: &'a str,
}

const fn url_get_query_value<'a>(url: &'a UrlData, key: &str) -> Option<&'a str> {
    if url.query.is_empty() {
        return None;
    }

    for kv in url.query {
        if kv.key == key {
            return Some(kv.value);
        }
    }

    None
}

fn main() {
    let query_data = [
        UrlKeyValue { key: "key1", value: "value1" },
        UrlKeyValue { key: "key2", value: "value2" },
    ];

    let url = UrlData {
        whole_url: String::from("https://example.com"),
        protocol: "https",
        userinfo: "",
        host: "example.com",
        port: "",
        path: "/",
        query: &query_data,
        fragment: "",
    };

    let key = "key1";
    match url_get_query_value(&url, key) {
        Some(value) => println!("Query value for key '{}': {}", key, value),
        None => println!("Query value for key '{}' not found", key),
    }
}
