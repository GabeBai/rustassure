type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<OpngBitsetT>() as u32 * 8) - 1;

fn opng_bitset_count(set: OpngBitsetT) -> u32 {
    let mut result = 0;
    let mut set = set;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}

fn main() {
    let test_set: OpngBitsetT = 0b10101010;
    println!("Number of set bits in test_set: {}", opng_bitset_count(test_set));
}
