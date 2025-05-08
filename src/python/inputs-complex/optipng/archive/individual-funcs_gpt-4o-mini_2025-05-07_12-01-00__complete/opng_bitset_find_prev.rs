type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: usize = 0;
const OPNG_BITSET_ELT_MAX: usize = (std::mem::size_of::<OpngBitsetT>() * 8) - 1;

fn opng_bitset_find_prev(set: OpngBitsetT, elt: usize) -> isize {
    let mut i = if elt < OPNG_BITSET_ELT_MAX + 1 { elt } else { OPNG_BITSET_ELT_MAX + 1 } - 1;
    while i >= 0 {
        if (set & (1 << i)) != 0 {
            return i as isize;
        }
        i -= 1;
    }
    -1
}
