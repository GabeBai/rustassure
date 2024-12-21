fn mbedtls_ssl_write_finished(ssl: &mut mbedtls_ssl_context) -> i32 {
    let mut ret: i32;
    let hash_len: i32;
    mbedtls_debug_print_msg(ssl, 2, "ssl_tls.c", 3367, "=> write finished");
    mbedtls_ssl_update_out_pointers(ssl, ssl.transform_negotiate);
    ssl.handshake.calc_finished(ssl, &mut ssl.out_msg[4..], ssl.conf.endpoint);
    hash_len = if ssl.minor_ver == 0 { 36 } else { 12 };
    ssl.verify_data_len = hash_len as usize;
    ssl.own_verify_data[..hash_len as usize].copy_from_slice(&ssl.out_msg[4..4 + hash_len as usize]);
    ssl.out_msglen = 4 + hash_len as usize;
    ssl.out_msgtype = 22;
    ssl.out_msg[0] = 20;
    if ssl.handshake.resume != 0 {
        if ssl.conf.endpoint == 0 {
            ssl.state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
        }
        if ssl.conf.endpoint == 1 {
            ssl.state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;
        }
    } else {
        ssl.state += 1;
    }
    mbedtls_debug_print_msg(ssl, 3, "ssl_tls.c", 3412, "switching to new transform spec for outbound data");
    if ssl.conf.transport == 1 {
        ssl.handshake.alt_transform_out = ssl.transform_out;
        ssl.handshake.alt_out_ctr.copy_from_slice(&ssl.cur_out_ctr);
        ssl.cur_out_ctr[2..].fill(0);
        for i in (0..2).rev() {
            ssl.cur_out_ctr[i] += 1;
            if ssl.cur_out_ctr[i] != 0 {
                break;
            }
        }
        if ssl.cur_out_ctr[0] == 0 && ssl.cur_out_ctr[1] == 0 {
            mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 3434, "DTLS epoch would wrap");
            return -0x6B80;
        }
    } else {
        ssl.cur_out_ctr.fill(0);
    }
    ssl.transform_out = ssl.transform_negotiate;
    ssl.session_out = ssl.session_negotiate;
    if ssl.conf.transport == 1 {
        mbedtls_ssl_send_flight_completed(ssl);
    }
    ret = mbedtls_ssl_write_handshake_msg(ssl);
    if ret != 0 {
        mbedtls_debug_print_ret(ssl, 1, "ssl_tls.c", 3463, "mbedtls_ssl_write_handshake_msg", ret);
        return ret;
    }
    if ssl.conf.transport == 1 {
        ret = mbedtls_ssl_flight_transmit(ssl);
        if ret != 0 {
            mbedtls_debug_print_ret(ssl, 1, "ssl_tls.c", 3471, "mbedtls_ssl_flight_transmit", ret);
            return ret;
        }
    }
    mbedtls_debug_print_msg(ssl, 2, "ssl_tls.c", 3476, "<= write finished");
    0
}
