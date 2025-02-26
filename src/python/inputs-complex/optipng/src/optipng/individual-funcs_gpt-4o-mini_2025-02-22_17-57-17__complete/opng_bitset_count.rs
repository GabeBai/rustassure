type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: usize = 0;
const OPNG_BITSET_ELT_MAX: usize = (std::mem::size_of::<OpngBitsetT>() * 8) - 1;

fn opng_bitset_count(set: OpngBitsetT) -> u32 {
    let mut result = 0;
    let mut set = set;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}
