type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: usize = 0;
const OPNG_BITSET_ELT_MAX: usize = (std::mem::size_of::<OpngBitsetT>() * 8) - 1;

const _ISUPPER: u32 = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISLOWER: u32 = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISALPHA: u32 = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISDIGIT: u32 = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISXDIGIT: u32 = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISSPACE: u32 = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISPRINT: u32 = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISGRAPH: u32 = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISBLANK: u32 = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _ISCNTRL: u32 = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISPUNCT: u32 = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISALNUM: u32 = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

fn opng_bitset_find_first(set: OpngBitsetT) -> i32 {
    for i in 0..=OPNG_BITSET_ELT_MAX {
        if (set & (1 << i)) != 0 {
            return i as i32;
        }
    }
    -1
}
