use std::cmp::Ordering;

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

static URL_SCHEMES: [&str; 144] = [
    "aaa", "aaas", "about", "acap", "acct", "adiumxtra", "afp", "afs", "aim", "apt", "attachment", "aw",
    "beshare", "bitcoin", "bolo", "callto", "cap", "chrome", "crome-extension", "com-evenbrite-attendee",
    "cid", "coap", "coaps", "content", "crid", "cvs", "data", "dav", "dict", "lna-playsingle", "dln-playcontainer",
    // Add the rest of the URL schemes here
];

fn url_is_protocol(str: &str) -> bool {
    for scheme in URL_SCHEMES.iter() {
        if scheme == &str {
            return true;
        }
    }
    false
}

fn main() {
    let test_url = "http";
    if url_is_protocol(test_url) {
        println!("{} is a valid URL scheme", test_url);
    } else {
        println!("{} is not a valid URL scheme", test_url);
    }
}
