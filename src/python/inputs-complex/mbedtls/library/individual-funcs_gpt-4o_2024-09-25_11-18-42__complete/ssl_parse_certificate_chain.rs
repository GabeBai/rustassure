extern crate mbedtls;

use mbedtls::x509::Certificate;
use mbedtls::ssl::{Context, AlertLevel, AlertMessage};
use mbedtls::error::Error as MbedtlsError;

fn ssl_parse_certificate_chain(ssl: &mut Context, chain: &mut Certificate) -> Result<(), MbedtlsError> {
    let mut crt_cnt = 0;
    let mut i: usize;
    let mut n: usize;
    let mut alert: u8;

    if ssl.in_msgtype != 22 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2257, "bad certificate message");
        ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::UnexpectedMessage)?;
        return Err(MbedtlsError::from_code(-0x7700));
    }

    if ssl.in_msg[0] != 11 || ssl.in_hslen < mbedtls_ssl_hs_hdr_len(ssl) + 3 + 3 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2266, "bad certificate message");
        ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::DecodeError)?;
        return Err(MbedtlsError::from_code(-0x7A00));
    }

    i = mbedtls_ssl_hs_hdr_len(ssl);
    n = (ssl.in_msg[i + 1] as usize) << 8 | ssl.in_msg[i + 2] as usize;

    if ssl.in_msg[i] != 0 || ssl.in_hslen != n + 3 + mbedtls_ssl_hs_hdr_len(ssl) {
        mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2282, "bad certificate message");
        ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::DecodeError)?;
        return Err(MbedtlsError::from_code(-0x7A00));
    }

    i += 3;

    while i < ssl.in_hslen {
        if i + 3 > ssl.in_hslen {
            mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2296, "bad certificate message");
            ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::DecodeError)?;
            return Err(MbedtlsError::from_code(-0x7A00));
        }

        if ssl.in_msg[i] != 0 {
            mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2306, "bad certificate message");
            ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::DecodeError)?;
            return Err(MbedtlsError::from_code(-0x7A00));
        }

        n = (ssl.in_msg[i + 1] as usize) << 8 | ssl.in_msg[i + 2] as usize;
        i += 3;

        if n < 128 || i + n > ssl.in_hslen {
            mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2320, "bad certificate message");
            ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::DecodeError)?;
            return Err(MbedtlsError::from_code(-0x7A00));
        }

        if crt_cnt == 0 && ssl.conf.endpoint == 0 && ssl.renego_status == 1 {
            mbedtls_debug_print_msg(ssl, 3, "ssl_tls.c", 2337, "Check that peer CRT hasn't changed during renegotiation");
            if ssl_check_peer_crt_unchanged(ssl, &ssl.in_msg[i..i + n]) != 0 {
                mbedtls_debug_print_msg(ssl, 1, "ssl_tls.c", 2342, "new server cert during renegotiation");
                ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::BadCertificate)?;
                return Err(MbedtlsError::from_code(-0x7A00));
            }
            ssl_clear_peer_cert(ssl.session);
        }

        match chain.parse_der(&ssl.in_msg[i..i + n]) {
            Ok(_) => (),
            Err(MbedtlsError::AllocFailed) => {
                alert = 80;
                goto crt_parse_der_failed;
            }
            Err(MbedtlsError::BadInputData) => {
                alert = 43;
                goto crt_parse_der_failed;
            }
            Err(_) => {
                alert = 42;
                crt_parse_der_failed:
                ssl.send_alert_message(AlertLevel::Fatal, AlertMessage::from(alert))?;
                mbedtls_debug_print_ret(ssl, 1, "ssl_tls.c", 2382, "mbedtls_x509_crt_parse_der", ret);
                return Err(ret);
            }
        }

        i += n;
        crt_cnt += 1;
    }

    mbedtls_debug_print_crt(ssl, 3, "ssl_tls.c", 2389, "peer certificate", chain);
    Ok(())
}
