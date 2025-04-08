type OpngBitsetT = u32;

fn opng_bitset_count(mut set: OpngBitsetT) -> u32 {
    let mut result = 0;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}
