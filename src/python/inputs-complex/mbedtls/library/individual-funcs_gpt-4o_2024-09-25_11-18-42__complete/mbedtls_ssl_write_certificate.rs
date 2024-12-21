use mbedtls::ssl::{
    Context as MbedtlsSslContext, Ciphersuite, X509Crt, write_handshake_msg, debug_print_msg, debug_print_ret, debug_print_crt,
};
use std::ptr;
use std::slice;

fn mbedtls_ssl_write_certificate(ssl: &mut MbedtlsSslContext) -> i32 {
    let mut ret = -0x7080;
    let mut i: usize;
    let mut n: usize;
    let crt: *const X509Crt;
    let ciphersuite_info: *const Ciphersuite;

    unsafe {
        ciphersuite_info = (*ssl.handshake).ciphersuite_info;
        debug_print_msg(ssl, 2, "ssl_tls.c", 2087, "=> write certificate");

        if !mbedtls_ssl_ciphersuite_uses_srv_cert(ciphersuite_info) {
            debug_print_msg(ssl, 2, "ssl_tls.c", 2091, "<= skip write certificate");
            ssl.state += 1;
            return 0;
        }

        if (*ssl.conf).endpoint == 0 {
            if ssl.client_auth == 0 {
                debug_print_msg(ssl, 2, "ssl_tls.c", 2101, "<= skip write certificate");
                ssl.state += 1;
                return 0;
            }
        }

        if (*ssl.conf).endpoint == 1 {
            if mbedtls_ssl_own_cert(ssl).is_null() {
                debug_print_msg(ssl, 1, "ssl_tls.c", 2130, "got no certificate to send");
                return -0x7580;
            }
        }

        debug_print_crt(ssl, 3, "ssl_tls.c", 2136, "own certificate", mbedtls_ssl_own_cert(ssl));
        i = 7;
        crt = mbedtls_ssl_own_cert(ssl);

        while !crt.is_null() {
            n = (*crt).raw.len;
            if n > 16384 - 3 - i {
                debug_print_msg(ssl, 1, "ssl_tls.c", 2156, "certificate too large, %d > %d", i + 3 + n, 16384);
                return -0x7500;
            }

            ssl.out_msg[i] = (n >> 16) as u8;
            ssl.out_msg[i + 1] = (n >> 8) as u8;
            ssl.out_msg[i + 2] = n as u8;
            i += 3;
            ptr::copy_nonoverlapping((*crt).raw.p, ssl.out_msg.as_mut_ptr().add(i), n);
            i += n;
            crt = (*crt).next;
        }

        ssl.out_msg[4] = ((i - 7) >> 16) as u8;
        ssl.out_msg[5] = ((i - 7) >> 8) as u8;
        ssl.out_msg[6] = (i - 7) as u8;
        ssl.out_msglen = i;
        ssl.out_msgtype = 22;
        ssl.out_msg[0] = 11;
        ssl.state += 1;

        ret = write_handshake_msg(ssl);
        if ret != 0 {
            debug_print_ret(ssl, 1, "ssl_tls.c", 2184, "mbedtls_ssl_write_handshake_msg", ret);
            return ret;
        }

        debug_print_msg(ssl, 2, "ssl_tls.c", 2188, "<= write certificate");
    }

    ret
}
