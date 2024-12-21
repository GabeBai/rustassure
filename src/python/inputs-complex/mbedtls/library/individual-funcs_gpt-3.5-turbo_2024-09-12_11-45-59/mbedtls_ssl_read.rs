use mbedtls_sys::*;

fn mbedtls_ssl_read(ssl: &mut mbedtls_ssl_context, buf: &mut [u8]) -> Result<usize, i32> {
    let mut ret: i32 = -0x006E;
    let mut n: usize;

    if ssl.is_null() || ssl.conf.is_null() {
        return Err(-0x7100);
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 5354, "=> read");

    if (*ssl).conf.transport == MBEDTLS_SSL_TRANSPORT_STREAM {
        if let Err(err) = mbedtls_ssl_flush_output(ssl) {
            return Err(err);
        }

        if let Some(handshake) = &(*ssl).handshake {
            if handshake.retransmit_state == 1 {
                if let Err(err) = mbedtls_ssl_flight_transmit(ssl) {
                    return Err(err);
                }
            }
        }
    }

    ret = ssl_check_ctr_renegotiate(ssl);
    if ret != -0x6B00 && ret != 0 {
        mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 5388, "ssl_check_ctr_renegotiate", ret);
        return Err(ret);
    }

    if (*ssl).state != MBEDTLS_SSL_HANDSHAKE_OVER {
        ret = mbedtls_ssl_handshake(ssl);
        if ret != -0x6B00 && ret != 0 {
            mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 5399, "mbedtls_ssl_handshake", ret);
            return Err(ret);
        }
    }

    while (*ssl).in_offt.is_null() {
        if let Some(f_get_timer) = (*ssl).f_get_timer {
            if f_get_timer((*ssl).p_timer) == -1 {
                mbedtls_ssl_set_timer(ssl, (*ssl).conf.read_timeout);
            }
        }

        if let Err(err) = mbedtls_ssl_read_record(ssl, 1) {
            if err == -0x7280 {
                return Ok(0);
            }
            mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 5419, "mbedtls_ssl_read_record", err);
            return Err(err);
        }

        if (*ssl).in_msglen == 0 && (*ssl).in_msgtype == 23 {
            if let Err(err) = mbedtls_ssl_read_record(ssl, 1) {
                if err == -0x7280 {
                    return Ok(0);
                }
                mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 5434, "mbedtls_ssl_read_record", err);
                return Err(err);
            }
        }

        // Handle different message types and renegotiation here
        // ...

        if (*ssl).in_msgtype == 23 {
            // Handle application data message
            // ...
        } else {
            mbedtls_debug_print_msg(ssl, 1, "ssl_msg.c", 5596, "bad application data message");
            return Err(-0x7700);
        }
    }

    n = if len < (*ssl).in_msglen {
        len
    } else {
        (*ssl).in_msglen
    };

    unsafe {
        std::ptr::copy_nonoverlapping((*ssl).in_offt, buf.as_mut_ptr(), n);
    }

    (*ssl).in_msglen -= n;
    mbedtls_platform_zeroize((*ssl).in_offt as *mut std::ffi::c_void, n);
    
    if (*ssl).in_msglen == 0 {
        (*ssl).in_offt = std::ptr::null_mut();
        (*ssl).keep_current_message = 0;
    } else {
        (*ssl).in_offt = (*ssl).in_offt.offset(n as isize);
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 5648, "<= read");

    Ok(n)
}
