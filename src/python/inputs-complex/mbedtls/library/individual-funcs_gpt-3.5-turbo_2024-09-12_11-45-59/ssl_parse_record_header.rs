use std::mem;

struct mbedtls_record {
    ctr: [u8; 8],
    r#type: u8,
    ver: [u8; 2],
    buf: Option<Vec<u8>>,
    buf_len: usize,
    data_offset: usize,
    data_len: usize,
}

fn ssl_parse_record_header(ssl: &mbedtls_ssl_context, buf: &[u8]) -> Result<mbedtls_record, i32> {
    let rec_hdr_type_offset = 0;
    let rec_hdr_type_len = 1;
    let rec_hdr_version_offset = rec_hdr_type_offset + rec_hdr_type_len;
    let rec_hdr_version_len = 2;
    let rec_hdr_ctr_len = 8;
    let rec_hdr_ctr_offset = rec_hdr_version_offset + rec_hdr_version_len;
    let rec_hdr_len_offset = rec_hdr_ctr_offset + rec_hdr_ctr_len;
    let rec_hdr_len_len = 2;

    if buf.len() < rec_hdr_len_offset + rec_hdr_len_len {
        return Err(-0x7200);
    }

    let r#type = buf[rec_hdr_type_offset];
    // Check for unknown record type
    if ssl_check_record_type(r#type) {
        return Err(-0x7200);
    }

    let ver = [buf[rec_hdr_version_offset], buf[rec_hdr_version_offset + 1]];
    let (major_ver, minor_ver) = mbedtls_ssl_read_version(ssl.conf.transport, &ver);

    if major_ver != ssl.major_ver {
        return Err(-0x7200);
    }

    if minor_ver > ssl.conf.max_minor_ver {
        return Err(-0x7200);
    }

    let mut ctr = [0; 8];
    ctr.copy_from_slice(&buf[rec_hdr_ctr_offset..rec_hdr_ctr_offset + rec_hdr_ctr_len]);

    let data_offset = rec_hdr_len_offset + rec_hdr_len_len;
    let data_len = ((buf[rec_hdr_len_offset] as usize) << 8) | (buf[rec_hdr_len_offset + 1] as usize);

    // Debug print statements
    debug_print_buf(ssl, 4, "ssl_msg.c", 3656, "input record header", buf, data_offset);
    debug_print_msg(ssl, 3, "ssl_msg.c", 3661, &format!("input record: msgtype = {}, version = [{}:{}], msglen = {}", r#type, major_ver, minor_ver, data_len));

    let buf_len = data_offset + data_len;

    if data_len == 0 {
        return Err(-0x7200);
    }

    if ssl.conf.transport == 1 {
        let rec_epoch = (ctr[0] as u16) << 8 | ctr[1] as u16;

        if buf.len() < buf_len {
            return Err(-0x7200);
        }

        if rec_epoch != ssl.in_epoch {
            debug_print_msg(ssl, 1, "ssl_msg.c", 3703, &format!("record from another epoch: expected {}, received {}", ssl.in_epoch, rec_epoch));

            if rec_epoch == ssl.in_epoch + 1 {
                debug_print_msg(ssl, 2, "ssl_msg.c", 3709, "Consider record for buffering");
                return Err(-0x6480);
            }

            return Err(-0x6700);
        } else if mbedtls_ssl_dtls_record_replay_check(ssl, &ctr) != 0 {
            debug_print_msg(ssl, 1, "ssl_msg.c", 3721, "replayed record");
            return Err(-0x6700);
        }
    }

    Ok(mbedtls_record {
        ctr,
        r#type,
        ver,
        buf: Some(buf.to_vec()),
        buf_len,
        data_offset,
        data_len,
    })
}
