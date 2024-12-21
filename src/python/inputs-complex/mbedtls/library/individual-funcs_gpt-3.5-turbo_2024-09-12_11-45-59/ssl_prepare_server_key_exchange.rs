use mbedtls_sys::*;
use std::ptr;

fn ssl_prepare_server_key_exchange(ssl: &mut mbedtls_ssl_context, signature_len: &mut usize) -> i32 {
    let ciphersuite_info = unsafe { &*ssl.handshake.ciphersuite_info };
    let mut dig_signed: *mut u8 = ptr::null_mut();

    ssl.out_msglen = 4;

    if ciphersuite_info.key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK
        || ciphersuite_info.key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK
    {
        ssl.out_msg[ssl.out_msglen] = 0x00;
        ssl.out_msg[ssl.out_msglen + 1] = 0x00;
        ssl.out_msglen += 2;
    }

    if mbedtls_ssl_ciphersuite_uses_dhe(ciphersuite_info) {
        let mut ret: i32 = -0x006E;
        let mut len: size_t = 0;

        if ssl.conf.dhm_P.p.is_null() || ssl.conf.dhm_G.p.is_null() {
            eprintln!("No DH parameters set");
            return -0x7100;
        }

        unsafe {
            ret = mbedtls_dhm_set_group(&mut ssl.handshake.dhm_ctx, &ssl.conf.dhm_P, &ssl.conf.dhm_G);
        }

        if ret != 0 {
            eprintln!("mbedtls_dhm_set_group failed with error: {}", ret);
            return ret;
        }

        unsafe {
            ret = mbedtls_dhm_make_params(
                &mut ssl.handshake.dhm_ctx,
                mbedtls_mpi_size(&ssl.handshake.dhm_ctx.P) as i32,
                ssl.out_msg.as_mut_ptr().add(ssl.out_msglen),
                &mut len,
                ssl.conf.f_rng,
                ssl.conf.p_rng,
            );
        }

        if ret != 0 {
            eprintln!("mbedtls_dhm_make_params failed with error: {}", ret);
            return ret;
        }

        dig_signed = ssl.out_msg.as_mut_ptr().add(ssl.out_msglen);
        ssl.out_msglen += len;
    }

    // Handle ECDHE key exchange

    if mbedtls_ssl_ciphersuite_uses_server_signature(ciphersuite_info) {
        let mut hash: [u8; 64] = [0; 64];
        let mut hashlen: size_t = 0;
        let mut ret: i32 = -0x006E;

        // Calculate hash based on the protocol version
        let md_alg = if ssl.minor_ver == 3 {
            let sig_alg = mbedtls_ssl_get_ciphersuite_sig_pk_alg(ciphersuite_info);
            let md_alg = mbedtls_ssl_sig_hash_set_find(&mut ssl.handshake.hash_algs, sig_alg);

            if md_alg == MBEDTLS_MD_NONE {
                eprintln!("Should never happen");
                return -0x6C00;
            }

            md_alg
        } else if ciphersuite_info.key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA {
            MBEDTLS_MD_SHA1
        } else {
            MBEDTLS_MD_NONE
        };

        if md_alg == MBEDTLS_MD_NONE {
            let mut hashlen: size_t = 36;
            let ret = mbedtls_ssl_get_key_exchange_md_ssl_tls(ssl, hash.as_mut_ptr(), dig_signed, ssl.out_msglen as size_t);

            if ret != 0 {
                return ret;
            }
        } else if md_alg != MBEDTLS_MD_NONE {
            let ret = mbedtls_ssl_get_key_exchange_md_tls1_2(ssl, hash.as_mut_ptr(), &mut hashlen, dig_signed, ssl.out_msglen as size_t, md_alg);

            if ret != 0 {
                return ret;
            }
        } else {
            eprintln!("Should never happen");
            return -0x6C00;
        }

        if ssl.minor_ver == 3 {
            ssl.out_msg[ssl.out_msglen] = mbedtls_ssl_hash_from_md_alg(md_alg);
            ssl.out_msg[ssl.out_msglen + 1] = mbedtls_ssl_sig_from_pk_alg(mbedtls_ssl_get_ciphersuite_sig_pk_alg(ciphersuite_info));
            ssl.out_msglen += 2;
        }

        if mbedtls_ssl_own_key(ssl).is_null() {
            eprintln!("Got no private key");
            return -0x7600;
        }

        let mut sig_len: usize = 0;
        ret = unsafe {
            mbedtls_pk_sign(
                mbedtls_ssl_own_key(ssl),
                md_alg,
                hash.as_ptr(),
                hashlen,
                ssl.out_msg.as_mut_ptr().add(ssl.out_msglen + 2),
                &mut sig_len,
                ssl.conf.f_rng,
                ssl.conf.p_rng,
            )
        };

        if ret != 0 {
            eprintln!("mbedtls_pk_sign failed with error: {}", ret);
            return ret;
        }

        *signature_len = sig_len;
    }

    0
}
