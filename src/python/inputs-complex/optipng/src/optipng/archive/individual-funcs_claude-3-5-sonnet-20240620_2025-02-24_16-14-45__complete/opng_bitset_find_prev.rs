type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitset>() * 8 - 1) as i32;

fn opng_bitset_find_prev(set: OpngBitset, elt: i32) -> i32 {
    let mut i = elt.min(OPNG_BITSET_ELT_MAX + 1) - 1;
    while i >= 0 {
        if (set & (1u32 << i)) != 0 {
            return i;
        }
        i -= 1;
    }
    -1
}