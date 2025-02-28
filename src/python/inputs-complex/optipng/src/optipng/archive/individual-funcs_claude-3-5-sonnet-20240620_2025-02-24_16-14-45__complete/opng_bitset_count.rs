type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitset>() * 8 - 1) as i32;

fn opng_bitset_count(mut set: OpngBitset) -> u32 {
    let mut result = 0;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}