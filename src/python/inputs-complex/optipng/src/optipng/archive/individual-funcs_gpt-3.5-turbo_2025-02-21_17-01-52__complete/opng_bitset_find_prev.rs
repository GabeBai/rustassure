type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() as i32 * 8) - 1;

fn opng_bitset_find_prev(set: OpngBitsetT, elt: i32) -> i32 {
    for i in ((elt < OPNG_BITSET_ELT_MAX + 1) as i32).min(elt) - 1..=0 {
        if (set & (1u32 << i as u32)) != 0 {
            return i;
        }
    }
    -1
}
