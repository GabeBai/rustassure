#![allow(unaligned_references)]
type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

#[no_mangle]
#[no_mangle]
fn opng_bitset_find_first(set: OpngBitsetT) -> i32 {
    for i in OPNG_BITSET_ELT_MIN..=OPNG_BITSET_ELT_MAX {
        if (set & (1 << i)) != 0 {
            return i;
        }
    }
    -1
}
