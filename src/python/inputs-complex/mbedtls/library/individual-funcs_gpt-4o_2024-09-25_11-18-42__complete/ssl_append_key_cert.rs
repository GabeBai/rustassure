use std::ptr;
use std::boxed::Box;

#[repr(C)]
struct MbedtlsX509Crt;
#[repr(C)]
struct MbedtlsPkContext;

#[repr(C)]
struct MbedtlsSslKeyCert {
    cert: *mut MbedtlsX509Crt,
    key: *mut MbedtlsPkContext,
    next: Option<Box<MbedtlsSslKeyCert>>,
}

fn ssl_append_key_cert(
    head: &mut Option<Box<MbedtlsSslKeyCert>>,
    cert: *mut MbedtlsX509Crt,
    key: *mut MbedtlsPkContext,
) -> i32 {
    let new_cert = Box::new(MbedtlsSslKeyCert {
        cert,
        key,
        next: None,
    });

    if head.is_none() {
        *head = Some(new_cert);
    } else {
        let mut cur = head.as_mut().unwrap();
        while let Some(ref mut next) = cur.next {
            cur = next;
        }
        cur.next = Some(new_cert);
    }

    0
}

fn main() {
    // Example usage
    let mut head: Option<Box<MbedtlsSslKeyCert>> = None;
    let cert: *mut MbedtlsX509Crt = ptr::null_mut();
    let key: *mut MbedtlsPkContext = ptr::null_mut();

    let result = ssl_append_key_cert(&mut head, cert, key);
    println!("Result: {}", result);
}
