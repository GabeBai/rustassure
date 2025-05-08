type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MAX: usize = (std::mem::size_of::<OpngBitsetT>() * 8) - 1;

fn opng_bitset_find_first(set: OpngBitsetT) -> i32 {
    for i in 0..=OPNG_BITSET_ELT_MAX {
        if (set & (1 << i)) != 0 {
            return i as i32;
        }
    }
    -1
}
