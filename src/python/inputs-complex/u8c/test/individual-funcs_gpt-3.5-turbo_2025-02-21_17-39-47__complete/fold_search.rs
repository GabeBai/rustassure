static FOLD_FROM: [u16; 996] = [
    0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047, 0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F, 0x0050,
    // Add all the values from the C code here
];

static FOLD_TO: [u16; 996] = [
    0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067, 0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F, 0x0070,
    // Add all the values from the C code here
];

fn fold_search(cp: u16) -> u16 {
    let mut i = 0;
    let mut j = 995;
    let mut k;

    while i <= j {
        k = (i + j) / 2;
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
