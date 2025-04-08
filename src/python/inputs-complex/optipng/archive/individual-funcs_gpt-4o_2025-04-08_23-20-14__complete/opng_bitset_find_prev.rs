type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

fn opng_bitset_find_prev(set: OpngBitsetT, elt: i32) -> i32 {
    let mut i = if elt < OPNG_BITSET_ELT_MAX + 1 { elt } else { OPNG_BITSET_ELT_MAX + 1 } - 1;
    while i >= 0 {
        if (set & (1 << i)) != 0 {
            return i;
        }
        i -= 1;
    }
    -1
}
