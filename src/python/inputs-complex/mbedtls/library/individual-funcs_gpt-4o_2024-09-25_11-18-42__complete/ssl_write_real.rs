use rustls::Session;
use std::io::{self, Write};
use std::sync::Arc;

fn ssl_write_real(
    session: &mut dyn Session,
    buf: &[u8],
) -> io::Result<usize> {
    let max_len = session.max_sendable_plaintext();
    if buf.len() > max_len {
        return Err(io::Error::new(
            io::ErrorKind::InvalidInput,
            format!(
                "fragment larger than the (negotiated) maximum fragment length: {} > {}",
                buf.len(),
                max_len
            ),
        ));
    }

    if session.wants_write() {
        session.write_tls(&mut io::stdout())?;
    }

    let len = session.write(buf)?;
    session.write_tls(&mut io::stdout())?;
    Ok(len)
}

fn main() {
    // Example usage
    let config = Arc::new(rustls::ClientConfig::new());
    let dns_name = webpki::DNSNameRef::try_from_ascii_str("example.com").unwrap();
    let mut client = rustls::ClientSession::new(&config, dns_name);

    let data = b"Hello, world!";
    match ssl_write_real(&mut client, data) {
        Ok(len) => println!("Successfully wrote {} bytes", len),
        Err(e) => eprintln!("Failed to write: {}", e),
    }
}
