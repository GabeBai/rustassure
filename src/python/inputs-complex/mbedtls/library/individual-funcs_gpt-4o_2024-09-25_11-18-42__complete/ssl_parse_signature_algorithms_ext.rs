fn ssl_parse_signature_algorithms_ext(ssl: &mut mbedtls_ssl_context, buf: &[u8]) -> i32 {
    if buf.len() < 2 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c", 253, "bad client hello message");
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return -0x7900;
    }

    let sig_alg_list_size = ((buf[0] as usize) << 8) | (buf[1] as usize);
    if sig_alg_list_size + 2 != buf.len() || sig_alg_list_size % 2 != 0 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c", 262, "bad client hello message");
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return -0x7900;
    }

    let end = buf.len();
    let mut p = 2;
    while p < end {
        let sig_cur = mbedtls_ssl_pk_alg_from_sig(buf[p + 1]);
        if sig_cur == MBEDTLS_PK_NONE {
            mbedtls_debug_print_msg(ssl, 3, "ssl_srv.c", 284, "client hello v3, signature_algorithm ext unknown sig alg encoding {}", buf[p + 1]);
            p += 2;
            continue;
        }

        let md_cur = mbedtls_ssl_md_alg_from_hash(buf[p]);
        if md_cur == MBEDTLS_MD_NONE {
            mbedtls_debug_print_msg(ssl, 3, "ssl_srv.c", 293, "client hello v3, signature_algorithm ext: unknown hash alg encoding {}", buf[p]);
            p += 2;
            continue;
        }

        if mbedtls_ssl_check_sig_hash(ssl, md_cur.clone()) == 0 {
            mbedtls_ssl_sig_hash_set_add(&mut ssl.handshake.hash_algs, sig_cur, md_cur);
            mbedtls_debug_print_msg(ssl, 3, "ssl_srv.c", 302, "client hello v3, signature_algorithm ext: match sig {} and hash {}", sig_cur, md_cur);
        } else {
            mbedtls_debug_print_msg(ssl, 3, "ssl_srv.c", 307, "client hello v3, signature_algorithm ext: hash alg {} not supported", md_cur);
        }

        p += 2;
    }

    0
}
