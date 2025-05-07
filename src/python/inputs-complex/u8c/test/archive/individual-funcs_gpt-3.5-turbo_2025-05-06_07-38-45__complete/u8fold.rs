fn u8fold(cp: u32) -> u32 {
    if 0x10400 <= cp && cp <= 0x10427 {
        cp += 40;
    }
    if cp <= 0xFFFF {
        cp = fold_search(cp);
    }
    cp
}

fn fold_search(cp: u32) -> u32 {
    // Implement your fold_search logic here
    cp
}
