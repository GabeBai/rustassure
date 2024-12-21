use std::ptr;

struct MbedtlsRecord {
    ctr: [u8; 8],
    r#type: u8,
    ver: [u8; 2],
    buf: *mut u8,
    buf_len: usize,
    data_offset: usize,
    data_len: usize,
}

fn ssl_extract_add_data_from_record(
    add_data: &mut [u8],
    add_data_len: &mut usize,
    rec: &MbedtlsRecord,
    minor_ver: u8,
) {
    let mut cur = 0;

    // Copy the counter
    add_data[cur..cur + rec.ctr.len()].copy_from_slice(&rec.ctr);
    cur += rec.ctr.len();

    // Copy the type
    add_data[cur] = rec.r#type;
    cur += 1;

    // Copy the version
    add_data[cur..cur + rec.ver.len()].copy_from_slice(&rec.ver);
    cur += rec.ver.len();

    // Copy the data length
    add_data[cur] = (rec.data_len >> 8) as u8;
    add_data[cur + 1] = (rec.data_len & 0xFF) as u8;
    cur += 2;

    *add_data_len = cur;
}

fn main() {
    // Example usage
    let mut add_data = [0u8; 16];
    let mut add_data_len = 0;
    let rec = MbedtlsRecord {
        ctr: [0; 8],
        r#type: 0,
        ver: [0; 2],
        buf: ptr::null_mut(),
        buf_len: 0,
        data_offset: 0,
        data_len: 0,
    };

    ssl_extract_add_data_from_record(&mut add_data, &mut add_data_len, &rec, 0);
    println!("add_data_len: {}", add_data_len);
}
