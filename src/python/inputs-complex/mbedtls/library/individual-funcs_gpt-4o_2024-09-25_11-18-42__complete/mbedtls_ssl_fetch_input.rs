extern crate log;

use log::{debug, error, info, warn};

fn mbedtls_ssl_fetch_input(ssl: &mut MbedtlsSslContext, nb_want: usize) -> Result<(), i32> {
    let mut ret = -0x006E;
    let in_buf_len = 13 + (0 + 16 + 48 + 256 + 0) + 16384;

    debug!("=> fetch input");

    if ssl.f_recv.is_none() && ssl.f_recv_timeout.is_none() {
        debug!("Bad usage of mbedtls_ssl_set_bio() or mbedtls_ssl_set_bio()");
        return Err(-0x7100);
    }

    if nb_want > in_buf_len - (ssl.in_hdr as usize - ssl.in_buf as usize) {
        debug!("requesting more data than fits");
        return Err(-0x7100);
    }

    if ssl.conf.transport == 1 {
        let timeout;
        if ssl.f_set_timer.is_none() || ssl.f_get_timer.is_none() {
            debug!("You must use mbedtls_ssl_set_timer_cb() for DTLS");
            return Err(-0x7100);
        }

        if ssl.next_record_offset != 0 {
            if ssl.in_left < ssl.next_record_offset {
                debug!("should never happen");
                return Err(-0x6C00);
            }

            ssl.in_left -= ssl.next_record_offset;
            if ssl.in_left != 0 {
                debug!("next record in same datagram, offset: {}", ssl.next_record_offset);
                ssl.in_hdr.copy_within(ssl.next_record_offset.., 0);
            }
            ssl.next_record_offset = 0;
        }

        debug!("in_left: {}, nb_want: {}", ssl.in_left, nb_want);

        if nb_want <= ssl.in_left {
            debug!("<- fetch input");
            return Ok(());
        }

        if ssl.in_left != 0 {
            debug!("should never happen");
            return Err(-0x6C00);
        }

        if mbedtls_ssl_check_timer(ssl) != 0 {
            debug!("timer has expired");
            ret = -0x6800;
        } else {
            let len = in_buf_len - (ssl.in_hdr as usize - ssl.in_buf as usize);
            if ssl.state != MBEDTLS_SSL_HANDSHAKE_OVER {
                timeout = ssl.handshake.retransmit_timeout;
            } else {
                timeout = ssl.conf.read_timeout;
            }

            debug!("f_recv_timeout: {} ms", timeout);

            if let Some(f_recv_timeout) = ssl.f_recv_timeout {
                ret = f_recv_timeout(ssl.p_bio, ssl.in_hdr, len, timeout);
            } else if let Some(f_recv) = ssl.f_recv {
                ret = f_recv(ssl.p_bio, ssl.in_hdr, len);
            }

            debug!("ssl->f_recv(_timeout) returned {}", ret);

            if ret == 0 {
                return Err(-0x7280);
            }
        }

        if ret == -0x6800 {
            debug!("timeout");
            mbedtls_ssl_set_timer(ssl, 0);

            if ssl.state != MBEDTLS_SSL_HANDSHAKE_OVER {
                if ssl_double_retransmit_timeout(ssl) != 0 {
                    debug!("handshake timeout");
                    return Err(-0x6800);
                }

                if let Err(e) = mbedtls_ssl_resend(ssl) {
                    debug!("mbedtls_ssl_resend returned {}", e);
                    return Err(e);
                }

                return Err(-0x6900);
            } else if ssl.conf.endpoint == 1 && ssl.renego_status == 3 {
                if let Err(e) = mbedtls_ssl_resend_hello_request(ssl) {
                    debug!("mbedtls_ssl_resend_hello_request returned {}", e);
                    return Err(e);
                }

                return Err(-0x6900);
            }
        }

        if ret < 0 {
            return Err(ret);
        }

        ssl.in_left = ret as usize;
    } else {
        debug!("in_left: {}, nb_want: {}", ssl.in_left, nb_want);

        while ssl.in_left < nb_want {
            let len = nb_want - ssl.in_left;

            if mbedtls_ssl_check_timer(ssl) != 0 {
                ret = -0x6800;
            } else {
                if let Some(f_recv_timeout) = ssl.f_recv_timeout {
                    ret = f_recv_timeout(ssl.p_bio, ssl.in_hdr.add(ssl.in_left), len, ssl.conf.read_timeout);
                } else if let Some(f_recv) = ssl.f_recv {
                    ret = f_recv(ssl.p_bio, ssl.in_hdr.add(ssl.in_left), len);
                }
            }

            debug!("in_left: {}, nb_want: {}", ssl.in_left, nb_want);
            debug!("ssl->f_recv(_timeout) returned {}", ret);

            if ret == 0 {
                return Err(-0x7280);
            }

            if ret < 0 {
                return Err(ret);
            }

            if (ret as usize) > len || (2147483647 > (18446744073709551615u64) && ret > (18446744073709551615u64 as i32)) {
                debug!("f_recv returned {} bytes but only {} were requested", ret, len);
                return Err(-0x6C00);
            }

            ssl.in_left += ret as usize;
        }
    }

    debug!("<- fetch input");
    Ok(())
}

extern crate env_logger;

fn main() {
    env_logger::init();
    // Your code here
}
