const URL_SCHEMES: [&str; 162] = [
    "aaa", "aaas", "about", "acap", "acct", "adiumxtra", "afp", "afs", "aim", "apt", "attachment", "aw",
    "beshare", "bitcoin", "bolo", "callto", "cap", "chrome", "crome-extension", "com-evenbrite-attendee",
    "cid", "coap", "coaps", "content", "crid", "cvs", "data", "dav", "dict", "lna-playsingle", "dln-playcontainer",
    // Add the rest of the schemes here
    "javascript", "jdbc", "doi"
];

fn url_is_protocol(str: &str) -> bool {
    for scheme in URL_SCHEMES.iter() {
        if scheme == &str {
            return true;
        }
    }
    false
}
