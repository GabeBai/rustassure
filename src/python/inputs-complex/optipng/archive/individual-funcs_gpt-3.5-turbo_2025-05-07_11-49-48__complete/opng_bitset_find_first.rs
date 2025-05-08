type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

fn opng_bitset_find_first(set: opng_bitset_t) -> i32 {
    for i in 0..=OPNG_BITSET_ELT_MAX {
        if (set & (1u32 << i)) != 0 {
            return i;
        }
    }
    -1
}
