extern crate mbedtls; // Ensure this crate is added to your Cargo.toml

use mbedtls::ssl::{Context as MbedtlsSslContext, FlightItem as MbedtlsSslFlightItem};
use mbedtls::debug::{print_msg as mbedtls_debug_print_msg, print_ret as mbedtls_debug_print_ret, print_buf as mbedtls_debug_print_buf};
use std::ptr::copy_nonoverlapping as memcpy;

fn mbedtls_ssl_flight_transmit(ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
    let mut ret = -0x006E;
    mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2320, "=> mbedtls_ssl_flight_transmit");

    if ssl.handshake.retransmit_state != 1 {
        mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2324, "initialise flight transmission");
        ssl.handshake.cur_msg = ssl.handshake.flight;
        ssl.handshake.cur_msg_p = unsafe { ssl.handshake.flight.p.add(12) };
        ret = ssl_swap_epochs(ssl);
        if ret != 0 {
            return Err(ret);
        }
        ssl.handshake.retransmit_state = 1;
    }

    while let Some(cur) = ssl.handshake.cur_msg {
        let max_frag_len;
        let is_finished = cur.type_ == 22 && cur.p[0] == 20;
        let force_flush = if ssl.disable_datagram_packing == 1 { 1 } else { 0 };

        if is_finished && ssl.handshake.cur_msg_p == unsafe { cur.p.add(12) } {
            mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2352, "swap epochs to send finished message");
            ret = ssl_swap_epochs(ssl);
            if ret != 0 {
                return Err(ret);
            }
        }

        ret = ssl_get_remaining_payload_in_datagram(ssl);
        if ret < 0 {
            return Err(ret);
        }
        max_frag_len = ret as usize;

        if cur.type_ == 20 {
            if max_frag_len == 0 {
                ret = mbedtls_ssl_flush_output(ssl);
                if ret != 0 {
                    return Err(ret);
                }
                continue;
            }
            unsafe {
                memcpy(ssl.out_msg.as_mut_ptr(), cur.p, cur.len);
            }
            ssl.out_msglen = cur.len;
            ssl.out_msgtype = cur.type_;
            ssl.handshake.cur_msg_p = unsafe { ssl.handshake.cur_msg_p.add(cur.len) };
        } else {
            let p = ssl.handshake.cur_msg_p;
            let hs_len = cur.len - 12;
            let frag_off = unsafe { p.offset_from(cur.p.add(12)) } as usize;
            let rem_len = hs_len - frag_off;
            let cur_hs_frag_len;
            let max_hs_frag_len;

            if max_frag_len < 12 || (max_frag_len == 12 && hs_len != 0) {
                if is_finished {
                    ret = ssl_swap_epochs(ssl);
                    if ret != 0 {
                        return Err(ret);
                    }
                }
                ret = mbedtls_ssl_flush_output(ssl);
                if ret != 0 {
                    return Err(ret);
                }
                continue;
            }

            max_hs_frag_len = max_frag_len - 12;
            cur_hs_frag_len = if rem_len > max_hs_frag_len {
                max_hs_frag_len
            } else {
                rem_len
            };

            if frag_off == 0 && cur_hs_frag_len != hs_len {
                mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2412, "fragmenting handshake message (%u > %u)", cur_hs_frag_len as u32, max_hs_frag_len as u32);
            }

            unsafe {
                memcpy(ssl.out_msg.as_mut_ptr(), cur.p, 6);
            }
            ssl.out_msg[6] = ((frag_off >> 16) & 0xff) as u8;
            ssl.out_msg[7] = ((frag_off >> 8) & 0xff) as u8;
            ssl.out_msg[8] = (frag_off & 0xff) as u8;
            ssl.out_msg[9] = ((cur_hs_frag_len >> 16) & 0xff) as u8;
            ssl.out_msg[10] = ((cur_hs_frag_len >> 8) & 0xff) as u8;
            ssl.out_msg[11] = (cur_hs_frag_len & 0xff) as u8;

            mbedtls_debug_print_buf(ssl, 3, "ssl_msg.c", 2428, "handshake header", &ssl.out_msg, 12);

            unsafe {
                memcpy(ssl.out_msg.as_mut_ptr().add(12), p, cur_hs_frag_len);
            }
            ssl.out_msglen = cur_hs_frag_len + 12;
            ssl.out_msgtype = cur.type_;
            ssl.handshake.cur_msg_p = unsafe { ssl.handshake.cur_msg_p.add(cur_hs_frag_len) };
        }

        if ssl.handshake.cur_msg_p >= unsafe { cur.p.add(cur.len) } {
            if let Some(next) = cur.next {
                ssl.handshake.cur_msg = Some(next);
                ssl.handshake.cur_msg_p = unsafe { next.p.add(12) };
            } else {
                ssl.handshake.cur_msg = None;
                ssl.handshake.cur_msg_p = std::ptr::null();
            }
        }

        ret = mbedtls_ssl_write_record(ssl, force_flush);
        if ret != 0 {
            mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 2457, "mbedtls_ssl_write_record", ret);
            return Err(ret);
        }
    }

    ret = mbedtls_ssl_flush_output(ssl);
    if ret != 0 {
        return Err(ret);
    }

    if ssl.state == MBEDTLS_SSL_HANDSHAKE_OVER {
        ssl.handshake.retransmit_state = 3;
    } else {
        ssl.handshake.retransmit_state = 2;
        mbedtls_ssl_set_timer(ssl, ssl.handshake.retransmit_timeout);
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2474, "<= mbedtls_ssl_flight_transmit");
    Ok(())
}
