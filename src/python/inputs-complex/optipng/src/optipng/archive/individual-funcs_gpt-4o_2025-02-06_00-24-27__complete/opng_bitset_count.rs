#![allow(unaligned_references)]
type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

#[no_mangle]
#[no_mangle]
fn opng_bitset_count(mut set: OpngBitsetT) -> u32 {
    let mut result = 0;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}
