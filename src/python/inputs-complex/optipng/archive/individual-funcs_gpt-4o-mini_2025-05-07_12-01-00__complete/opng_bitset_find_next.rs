type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8) as i32 - 1;

fn opng_bitset_find_next(set: OpngBitsetT, elt: i32) -> i32 {
    let mut i = if elt > -1 { elt + 1 } else { -1 };
    while i <= OPNG_BITSET_ELT_MAX {
        if (set & (1 << i)) != 0 {
            return i;
        }
        i += 1;
    }
    -1
}
