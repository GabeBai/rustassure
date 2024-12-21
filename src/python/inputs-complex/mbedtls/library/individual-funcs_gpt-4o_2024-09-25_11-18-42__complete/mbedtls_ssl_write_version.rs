fn mbedtls_ssl_write_version(major: i32, minor: i32, transport: i32, ver: &mut [u8; 2]) {
    if transport == 1 {
        let mut minor = minor;
        if minor == 2 {
            minor -= 1;
        }
        ver[0] = (255 - (major - 2)) as u8;
        ver[1] = (255 - (minor - 1)) as u8;
    } else {
        ver[0] = major as u8;
        ver[1] = minor as u8;
    }
}
