use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    new_session_ticket: i32,
}

fn mbedtls_debug_print_msg(
    ssl: &MbedtlsSslContext,
    level: i32,
    file: &str,
    line: i32,
    format: &str,
) {
    // Implement the debug print functionality here
    println!(
        "Debug (level {}): {}:{} - {}",
        level, file, line, format
    );
}

fn ssl_write_session_ticket_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    olen: &mut usize,
) {
    let p = buf.as_mut_ptr();
    unsafe {
        if (*ssl.handshake).new_session_ticket == 0 {
            *olen = 0;
            return;
        }
    }

    mbedtls_debug_print_msg(
        ssl,
        3,
        "ssl_srv.c",
        2313,
        "server hello, adding session ticket extension",
    );

    unsafe {
        *p.offset(0) = ((35 >> 8) & 0xFF) as u8;
        *p.offset(1) = (35 & 0xFF) as u8;
        *p.offset(2) = 0x00;
        *p.offset(3) = 0x00;
    }

    *olen = 4;
}

fn main() {
    // Example usage
    let mut handshake = MbedtlsSslHandshakeParams {
        new_session_ticket: 1,
    };
    let mut ssl = MbedtlsSslContext {
        handshake: &mut handshake,
    };
    let mut buf = [0u8; 4];
    let mut olen = 0usize;

    ssl_write_session_ticket_ext(&mut ssl, &mut buf, &mut olen);

    println!("Buffer: {:?}", buf);
    println!("Output length: {}", olen);
}
