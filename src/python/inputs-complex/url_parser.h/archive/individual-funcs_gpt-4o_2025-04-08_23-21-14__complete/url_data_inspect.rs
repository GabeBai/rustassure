struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

struct UrlData<'a> {
    whole_url: *mut i8,
    protocol: Option<&'a str>,
    userinfo: Option<&'a str>,
    host: Option<&'a str>,
    port: Option<&'a str>,
    path: Option<&'a str>,
    query: *const UrlKeyValue,
    fragment: Option<&'a str>,
}

fn url_data_inspect(data: &UrlData) {
    println!("#url =>");
    if let Some(protocol) = data.protocol {
        println!("    .protocol: \"{}\"", protocol);
    } else {
        println!("    .protocol: (NULL)");
    }
    if let Some(host) = data.host {
        println!("    .host: \"{}\"", host);
    } else {
        println!("    .host: (NULL)");
    }
    if let Some(userinfo) = data.userinfo {
        println!("    .userinfo: \"{}\"", userinfo);
    } else {
        println!("    .userinfo: (NULL)");
    }
    if let Some(host) = data.host {
        println!("    .host: \"{}\"", host);
    } else {
        println!("    .host: (NULL)");
    }
    if let Some(port) = data.port {
        println!("    .port: \"{}\"", port);
    } else {
        println!("    .port: (NULL)");
    }
    if let Some(path) = data.path {
        println!("    .path: \"{}\"", path);
    } else {
        println!("    .path: (NULL)");
    }
    if !data.query.is_null() {
        let mut nr = 0;
        unsafe {
            while !(*data.query.add(nr)).key.is_null() {
                let key = std::ffi::CStr::from_ptr((*data.query.add(nr)).key).to_str().unwrap_or("(invalid UTF-8)");
                print!("    .query[{}]: \"{}\" -> ", nr, key);
                if !(*data.query.add(nr)).value.is_null() {
                    let value = std::ffi::CStr::from_ptr((*data.query.add(nr)).value).to_str().unwrap_or("(invalid UTF-8)");
                    println!("\"{}\"", value);
                } else {
                    println!("(NULL)");
                }
                nr += 1;
            }
        }
    }
    if let Some(fragment) = data.fragment {
        println!("    .fragment: \"{}\"", fragment);
    } else {
        println!("    .fragment: (NULL)");
    }
}
