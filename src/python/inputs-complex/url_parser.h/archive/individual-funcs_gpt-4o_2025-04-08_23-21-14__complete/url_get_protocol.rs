fn url_get_scheme(url: &str) -> Option<String> {
    if let Some(pos) = url.find("://") {
        Some(url[..pos].to_string())
    } else {
        None
    }
}

fn url_get_protocol(url: &str) -> Option<String> {
    url_get_scheme(url)
}

fn main() {
    let url = "https://example.com";
    match url_get_protocol(url) {
        Some(scheme) => println!("Scheme: {}", scheme),
        None => println!("No scheme found"),
    }
}
