extern crate rustls;

use rustls::{ClientConfig, ClientSession, Session};

struct MyStruct {
    config: ClientConfig,
    session: ClientSession,
}

fn main() {
    // Example usage
    let config = ClientConfig::new();
    let dns_name = webpki::DNSNameRef::try_from_ascii_str("example.com").unwrap();
    let session = ClientSession::new(&Arc::new(config), dns_name);

    let my_struct = MyStruct {
        config: config,
        session: session,
    };

    // Use my_struct as needed
}
