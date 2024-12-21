extern crate ring;
extern crate rustls;
extern crate webpki;
extern crate webpki_roots;

use rustls::ClientConfig;
use std::sync::Arc;

fn ssl_get_maximum_datagram_size(ssl: &rustls::ClientSession) -> usize {
    let mtu = ssl.get_mtu();
    let out_buf_len = 13 + (0 + 16 + 48 + 256 + 0) + 16384;
    if let Some(mtu) = mtu {
        if mtu < out_buf_len {
            return mtu;
        }
    }
    out_buf_len
}

fn main() {
    // Example usage
    let config = Arc::new(ClientConfig::new());
    let dns_name = webpki::DNSNameRef::try_from_ascii_str("example.com").unwrap();
    let mut client = rustls::ClientSession::new(&config, dns_name);

    let max_datagram_size = ssl_get_maximum_datagram_size(&client);
    println!("Maximum datagram size: {}", max_datagram_size);
}
