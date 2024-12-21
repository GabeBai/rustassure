use std::ffi::c_void;
use std::ptr;
use std::slice;

#[repr(C)]
struct MbedtlsSslContext {
    // Define the fields of the struct here
    handshake: *mut MbedtlsSslHandshakeParams,
    in_msgtype: u8,
    in_msg: *mut u8,
    in_hslen: usize,
    // Add other fields as necessary
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: Buffering,
    in_msg_seq: u16,
    // Add other fields as necessary
}

#[repr(C)]
struct Buffering {
    seen_ccs: u8,
    hs: [MbedtlsSslHsBuffer; 4],
    total_bytes_buffered: usize,
    // Add other fields as necessary
}

#[repr(C)]
struct MbedtlsSslHsBuffer {
    is_valid: u8,
    is_fragmented: u8,
    is_complete: u8,
    data: *mut u8,
    data_len: usize,
    // Add other fields as necessary
}

fn ssl_buffer_message(ssl: &mut MbedtlsSslContext) -> i32 {
    let mut ret = 0;
    let hs = unsafe { &mut *ssl.handshake };
    if hs.is_null() {
        return 0;
    }

    // Debug print message
    // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4157, "=> ssl_buffer_message");

    match ssl.in_msgtype {
        20 => {
            // Debug print message
            // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4162, "Remember CCS message");
            hs.buffering.seen_ccs = 1;
        }
        22 => {
            let recv_msg_seq = (unsafe { *ssl.in_msg.offset(4) } as u16) << 8 | (unsafe { *ssl.in_msg.offset(5) } as u16);
            let recv_msg_seq_offset = recv_msg_seq - hs.in_msg_seq;
            if recv_msg_seq_offset >= 4 {
                // Debug print message
                // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4190, "Ignore future HS message with sequence number %u, buffering window %u - %u", recv_msg_seq, hs.in_msg_seq, hs.in_msg_seq + 4 - 1);
                return ret;
            }

            // Debug print message
            // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4196, "Buffering HS message with sequence number %u, offset %u ", recv_msg_seq, recv_msg_seq_offset);

            let hs_buf = &mut hs.buffering.hs[recv_msg_seq_offset as usize];
            if hs_buf.is_valid == 0 {
                let msg_len = ssl.in_hslen - 12;
                if msg_len + 12 > 16384 {
                    return ret;
                }
                if hs.buffering.total_bytes_buffered > 32768 {
                    // Debug print message
                    // mbedtls_debug_print_msg(ssl, 1, "ssl_msg.c", 4223, "should never happen");
                    return -0x6C00;
                }

                let reassembly_buf_sz = msg_len + 12; // Adjust this as necessary
                if reassembly_buf_sz > (32768 - hs.buffering.total_bytes_buffered) {
                    if recv_msg_seq_offset > 0 {
                        // Debug print message
                        // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4239, "Buffering of future message of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- ignore\n", msg_len, 32768, hs.buffering.total_bytes_buffered);
                        return ret;
                    } else {
                        // Debug print message
                        // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4246, "Buffering of future message of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- attempt to make space by freeing buffered future messages\n", msg_len, 32768, hs.buffering.total_bytes_buffered);
                    }
                    // Implement ssl_buffer_make_space if necessary
                    // if ssl_buffer_make_space(ssl, reassembly_buf_sz) != 0 {
                    //     // Debug print message
                    //     // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4255, "Reassembly of next message of size %u (%u with bitmap) would exceed the compile-time limit %u (already %u bytes buffered) -- fail\n", msg_len, reassembly_buf_sz, 32768, hs.buffering.total_bytes_buffered);
                    //     ret = -0x6A00;
                    //     return ret;
                    // }
                }

                // Debug print message
                // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4262, "initialize reassembly, total length = %d", msg_len);

                hs_buf.data = unsafe { libc::calloc(1, reassembly_buf_sz) as *mut u8 };
                if hs_buf.data.is_null() {
                    ret = -0x7F00;
                    return ret;
                }
                hs_buf.data_len = reassembly_buf_sz;
                unsafe {
                    ptr::copy_nonoverlapping(ssl.in_msg, hs_buf.data, 6);
                    ptr::write_bytes(hs_buf.data.add(6), 0, 3);
                    ptr::copy_nonoverlapping(hs_buf.data.add(1), hs_buf.data.add(9), 3);
                }
                hs_buf.is_valid = 1;
                hs.buffering.total_bytes_buffered += reassembly_buf_sz;
            } else {
                if unsafe { ptr::read(hs_buf.data) } != unsafe { ptr::read(ssl.in_msg) } {
                    // Debug print message
                    // mbedtls_debug_print_msg(ssl, 1, "ssl_msg.c", 4287, "Fragment header mismatch - ignore");
                    return ret;
                }
            }

            if hs_buf.is_complete == 0 {
                let frag_len = ssl.in_hslen - 12;
                let frag_off = 0; // Adjust this as necessary
                let msg = unsafe { slice::from_raw_parts_mut(hs_buf.data.add(12), hs_buf.data_len - 12) };
                unsafe {
                    ptr::copy_nonoverlapping(ssl.in_msg.add(12), msg.add(frag_off), frag_len);
                }
                hs_buf.is_complete = 1;
                // Debug print message
                // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4324, "message %scomplete", if hs_buf.is_complete == 1 { "" } else { "not yet " });
            }
        }
        _ => {}
    }

    // Debug print message
    // mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 4337, "<= ssl_buffer_message");

    ret
}
