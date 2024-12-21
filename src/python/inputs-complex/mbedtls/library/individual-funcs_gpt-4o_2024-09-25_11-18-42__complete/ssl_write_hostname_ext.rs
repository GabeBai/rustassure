use std::ptr;
use std::slice;
use std::str;
use std::ffi::CStr;

#[derive(Debug)]
struct MbedtlsSslContext {
    hostname: Option<String>,
}

fn ssl_write_hostname_ext(
    ssl: &MbedtlsSslContext,
    buf: &mut [u8],
    end: usize,
) -> Result<usize, i32> {
    let mut p = 0;
    let mut olen = 0;

    if ssl.hostname.is_none() {
        return Ok(0);
    }

    let hostname = ssl.hostname.as_ref().unwrap();
    let hostname_len = hostname.len();

    if p + hostname_len + 9 > end {
        return Err(-0x6A00);
    }

    buf[p] = (0 >> 8) as u8;
    p += 1;
    buf[p] = (0 & 0xFF) as u8;
    p += 1;
    buf[p] = ((hostname_len + 5) >> 8) as u8;
    p += 1;
    buf[p] = ((hostname_len + 5) & 0xFF) as u8;
    p += 1;
    buf[p] = ((hostname_len + 3) >> 8) as u8;
    p += 1;
    buf[p] = ((hostname_len + 3) & 0xFF) as u8;
    p += 1;
    buf[p] = (0 & 0xFF) as u8;
    p += 1;
    buf[p] = (hostname_len >> 8) as u8;
    p += 1;
    buf[p] = (hostname_len & 0xFF) as u8;
    p += 1;

    buf[p..p + hostname_len].copy_from_slice(hostname.as_bytes());
    p += hostname_len;

    olen = hostname_len + 9;
    Ok(olen)
}

fn main() {
    let ssl = MbedtlsSslContext {
        hostname: Some("example.com".to_string()),
    };

    let mut buf = vec![0u8; 100];
    let end = buf.len();

    match ssl_write_hostname_ext(&ssl, &mut buf, end) {
        Ok(olen) => println!("Written length: {}", olen),
        Err(e) => println!("Error: {}", e),
    }
}
