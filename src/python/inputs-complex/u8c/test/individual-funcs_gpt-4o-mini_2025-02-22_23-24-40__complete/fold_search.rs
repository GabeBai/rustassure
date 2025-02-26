const FOLD_FROM: [u16; 995] = [
    0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049, 0x004A,
    // ... (rest of the values, up to 995 elements)
    0xFF58, 0xFF59, 0xFF5A,
];

const FOLD_TO: [u16; 995] = [
    0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067, 0x0068, 0x0069, 0x006A,
    // ... (rest of the values, up to 995 elements)
    0xFF58, 0xFF59, 0xFF5A,
];

fn fold_search(cp: u16) -> u16 {
    let mut i = 0;
    let mut j = 994; // 995 elements, so last index is 994
    while i <= j {
        let k = (i + j) / 2;
        if cp == FOLD_FROM[k] {
            return FOLD_TO[k];
        }
        if cp < FOLD_FROM[k] {
            j = k - 1;
        } else {
            i = k + 1;
        }
    }
    cp
}
