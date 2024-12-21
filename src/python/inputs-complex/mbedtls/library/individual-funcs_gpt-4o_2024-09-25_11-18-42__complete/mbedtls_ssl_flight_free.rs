use std::ptr;

pub struct MbedtlsSslFlightItem {
    pub p: *mut u8,
    pub len: usize,
    pub type_: u8,
    pub next: *mut MbedtlsSslFlightItem,
}

pub unsafe fn mbedtls_ssl_flight_free(flight: *mut MbedtlsSslFlightItem) {
    let mut cur = flight;
    while !cur.is_null() {
        let next = (*cur).next;
        ptr::drop_in_place((*cur).p);
        ptr::drop_in_place(cur);
        cur = next;
    }
}
