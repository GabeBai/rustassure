pub fn mbedtls_ssl_read_version(major: &mut i32, minor: &mut i32, transport: i32, ver: [u8; 2]) {
    if transport == 1 {
        *major = 255 - ver[0] as i32 + 2;
        *minor = 255 - ver[1] as i32 + 1;
        if *minor == 1 {
            *minor += 1;
        }
    } else {
        *major = ver[0] as i32;
        *minor = ver[1] as i32;
    }
}
