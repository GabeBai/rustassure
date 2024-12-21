use std::ptr;

pub struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

pub struct MbedtlsSslHandshakeParams {
    buffering: Buffering,
}

pub struct Buffering {
    total_bytes_buffered: usize,
    future_record: FutureRecord,
}

pub struct FutureRecord {
    data: *mut u8,
    len: usize,
}

pub unsafe fn ssl_free_buffered_record(ssl: *mut MbedtlsSslContext) {
    let hs = (*ssl).handshake;
    if hs.is_null() {
        return;
    }
    if !(*hs).buffering.future_record.data.is_null() {
        (*hs).buffering.total_bytes_buffered -= (*hs).buffering.future_record.len;
        ptr::drop_in_place((*hs).buffering.future_record.data);
        (*hs).buffering.future_record.data = ptr::null_mut();
    }
}
