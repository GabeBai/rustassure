use std::ptr;

#[repr(C)]
struct MbedtlsSslKeyCert {
    cert: *mut MbedtlsX509Crt,
    key: *mut MbedtlsPkContext,
    next: *mut MbedtlsSslKeyCert,
}

#[repr(C)]
struct MbedtlsX509Crt {
    // Define the fields as needed
}

#[repr(C)]
struct MbedtlsPkContext {
    // Define the fields as needed
}

fn ssl_key_cert_free(mut key_cert: *mut MbedtlsSslKeyCert) {
    unsafe {
        while !key_cert.is_null() {
            let next = (*key_cert).next;
            // Free the current key_cert
            Box::from_raw(key_cert);
            key_cert = next;
        }
    }
}

fn main() {
    // Example usage
    let key_cert = Box::into_raw(Box::new(MbedtlsSslKeyCert {
        cert: ptr::null_mut(),
        key: ptr::null_mut(),
        next: ptr::null_mut(),
    }));

    ssl_key_cert_free(key_cert);
}
