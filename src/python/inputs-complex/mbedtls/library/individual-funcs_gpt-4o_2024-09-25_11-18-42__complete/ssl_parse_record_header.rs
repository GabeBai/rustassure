use std::ptr;
use std::slice;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    major_ver: i32,
    minor_ver: i32,
    in_ctr: [u8; 8],
    in_epoch: u16,
}

#[repr(C)]
struct MbedtlsSslConfig {
    transport: i32,
    max_minor_ver: i32,
}

#[repr(C)]
struct MbedtlsRecord {
    ctr: [u8; 8],
    r#type: u8,
    ver: [u8; 2],
    buf: *const u8,
    buf_len: usize,
    data_offset: usize,
    data_len: usize,
}

extern "C" {
    fn mbedtls_ssl_read_version(major: *mut i32, minor: *mut i32, transport: i32, ver: *const u8);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, buf: *const u8, len: usize);
    fn ssl_check_record_type(r#type: u8) -> i32;
    fn mbedtls_ssl_dtls_record_replay_check(ssl: *mut MbedtlsSslContext, ctr: *const u8) -> i32;
}

const MBEDTLS_ERR_SSL_INVALID_RECORD: i32 = -0x7200;
const MBEDTLS_ERR_SSL_EARLY_MESSAGE: i32 = -0x6480;
const MBEDTLS_ERR_SSL_UNEXPECTED_RECORD: i32 = -0x6700;

unsafe fn ssl_parse_record_header(
    ssl: *const MbedtlsSslContext,
    buf: *mut u8,
    len: usize,
    rec: *mut MbedtlsRecord,
) -> i32 {
    let mut major_ver = 0;
    let mut minor_ver = 0;
    let rec_hdr_type_offset = 0;
    let rec_hdr_type_len = 1;
    let rec_hdr_version_offset = rec_hdr_type_offset + rec_hdr_type_len;
    let rec_hdr_version_len = 2;
    let rec_hdr_ctr_len = 8;
    let rec_hdr_ctr_offset = rec_hdr_version_offset + rec_hdr_version_len;
    let rec_hdr_len_offset;
    let rec_hdr_len_len = 2;

    if (*(*ssl).conf).transport == 1 {
        rec_hdr_len_offset = rec_hdr_ctr_offset + rec_hdr_ctr_len;
    } else {
        rec_hdr_len_offset = rec_hdr_version_offset + rec_hdr_version_len;
    }

    if len < rec_hdr_len_offset + rec_hdr_len_len {
        mbedtls_debug_print_msg(
            ssl,
            1,
            b"ssl_msg.c\0".as_ptr() as *const i8,
            3549,
            b"datagram of length %u too small to hold DTLS record header of length %u\0".as_ptr() as *const i8,
            len as u32,
            (rec_hdr_len_len + rec_hdr_len_len) as u32,
        );
        return MBEDTLS_ERR_SSL_INVALID_RECORD;
    }

    (*rec).r#type = *buf.add(rec_hdr_type_offset);
    if ssl_check_record_type((*rec).r#type) != 0 {
        mbedtls_debug_print_msg(
            ssl,
            1,
            b"ssl_msg.c\0".as_ptr() as *const i8,
            3604,
            b"unknown record type %u\0".as_ptr() as *const i8,
            (*rec).r#type as u32,
        );
        return MBEDTLS_ERR_SSL_INVALID_RECORD;
    }

    (*rec).ver[0] = *buf.add(rec_hdr_version_offset);
    (*rec).ver[1] = *buf.add(rec_hdr_version_offset + 1);
    mbedtls_ssl_read_version(&mut major_ver, &mut minor_ver, (*(*ssl).conf).transport, (*rec).ver.as_ptr());

    if major_ver != (*ssl).major_ver {
        mbedtls_debug_print_msg(
            ssl,
            1,
            b"ssl_msg.c\0".as_ptr() as *const i8,
            3621,
            b"major version mismatch\0".as_ptr() as *const i8,
        );
        return MBEDTLS_ERR_SSL_INVALID_RECORD;
    }

    if minor_ver > (*(*ssl).conf).max_minor_ver {
        mbedtls_debug_print_msg(
            ssl,
            1,
            b"ssl_msg.c\0".as_ptr() as *const i8,
            3627,
            b"minor version mismatch\0".as_ptr() as *const i8,
        );
        return MBEDTLS_ERR_SSL_INVALID_RECORD;
    }

    if (*(*ssl).conf).transport == 1 {
        ptr::copy_nonoverlapping(buf.add(rec_hdr_ctr_offset), (*rec).ctr.as_mut_ptr(), rec_hdr_ctr_len);
    } else {
        ptr::copy_nonoverlapping((*ssl).in_ctr.as_ptr(), (*rec).ctr.as_mut_ptr(), rec_hdr_ctr_len);
    }

    (*rec).data_offset = rec_hdr_len_offset + rec_hdr_len_len;
    (*rec).data_len = ((*buf.add(rec_hdr_len_offset) as usize) << 8) | (*buf.add(rec_hdr_len_offset + 1) as usize);

    mbedtls_debug_print_buf(
        ssl,
        4,
        b"ssl_msg.c\0".as_ptr() as *const i8,
        3656,
        b"input record header\0".as_ptr() as *const i8,
        buf,
        (*rec).data_offset,
    );

    mbedtls_debug_print_msg(
        ssl,
        3,
        b"ssl_msg.c\0".as_ptr() as *const i8,
        3661,
        b"input record: msgtype = %d, version = [%d:%d], msglen = %d\0".as_ptr() as *const i8,
        (*rec).r#type as i32,
        major_ver,
        minor_ver,
        (*rec).data_len as i32,
    );

    (*rec).buf = buf;
    (*rec).buf_len = (*rec).data_offset + (*rec).data_len;

    if (*rec).data_len == 0 {
        return MBEDTLS_ERR_SSL_INVALID_RECORD;
    }

    if (*(*ssl).conf).transport == 1 {
        let rec_epoch = ((*rec).ctr[0] as u32) << 8 | (*rec).ctr[1] as u32;
        if len < (*rec).data_offset + (*rec).data_len {
            mbedtls_debug_print_msg(
                ssl,
                1,
                b"ssl_msg.c\0".as_ptr() as *const i8,
                3692,
                b"Datagram of length %u too small to contain record of advertised length %u.\0".as_ptr() as *const i8,
                len as u32,
                ((*rec).data_offset + (*rec).data_len) as u32,
            );
            return MBEDTLS_ERR_SSL_INVALID_RECORD;
        }

        if rec_epoch != (*ssl).in_epoch as u32 {
            mbedtls_debug_print_msg(
                ssl,
                1,
                b"ssl_msg.c\0".as_ptr() as *const i8,
                3703,
                b"record from another epoch: expected %d, received %d\0".as_ptr() as *const i8,
                (*ssl).in_epoch as i32,
                rec_epoch as i32,
            );

            if rec_epoch == ((*ssl).in_epoch + 1) as u32 {
                mbedtls_debug_print_msg(
                    ssl,
                    2,
                    b"ssl_msg.c\0".as_ptr() as *const i8,
                    3709,
                    b"Consider record for buffering\0".as_ptr() as *const i8,
                );
                return MBEDTLS_ERR_SSL_EARLY_MESSAGE;
            }
            return MBEDTLS_ERR_SSL_UNEXPECTED_RECORD;
        } else if mbedtls_ssl_dtls_record_replay_check(ssl as *mut MbedtlsSslContext, (*rec).ctr.as_ptr()) != 0 {
            mbedtls_debug_print_msg(
                ssl,
                1,
                b"ssl_msg.c\0".as_ptr() as *const i8,
                3721,
                b"replayed record\0".as_ptr() as *const i8,
            );
            return MBEDTLS_ERR_SSL_UNEXPECTED_RECORD;
        }
    }

    0
}
