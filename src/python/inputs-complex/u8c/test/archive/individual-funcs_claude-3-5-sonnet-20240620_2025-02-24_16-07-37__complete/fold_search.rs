struct Sbuf {
    base: *mut u8,
    size: i32,
}

type Uint16T = u16;

static FOLD_FROM: [Uint16T; 995] = [
    0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F, 0x0050,
    // ... (rest of the array)
    0xFF38, 0xFF39, 0xFF3A
];

static FOLD_TO: [Uint16T; 995] = [
    0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067, 0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F, 0x0070,
    // ... (rest of the array)
    0xFF58, 0xFF59, 0xFF5A
];

fn fold_search(cp: i32) -> i32 {
    let mut i = 0;
    let mut j = 995;
    while i <= j {
        let k = (i + j) / 2;
        if cp == FOLD_FROM[k] as i32 {
            return FOLD_TO[k] as i32;
        }
        if cp < FOLD_FROM[k] as i32 {
            j = k - 1;
        } else {
            i = k + 1;
        }
    }
    cp
}
