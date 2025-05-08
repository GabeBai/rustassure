use url::Url;

fn url_get_hash(url: &str) -> Option<&str> {
    if let Ok(parsed_url) = Url::parse(url) {
        parsed_url.fragment()
    } else {
        None
    }
}
