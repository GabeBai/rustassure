type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() as i32 * 8) - 1;

fn opng_bitset_find_next(set: OpngBitsetT, elt: i32) -> i32 {
    for i in (if elt > -1 { elt } else { -1 } + 1)..=OPNG_BITSET_ELT_MAX {
        if set & (1 << i) != 0 {
            return i;
        }
    }
    -1
}

const _ISUPPER: u16 = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISLOWER: u16 = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISALPHA: u16 = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISDIGIT: u16 = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISXDIGIT: u16 = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISSPACE: u16 = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISPRINT: u16 = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISGRAPH: u16 = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISBLANK: u16 = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _ISCNTRL: u16 = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISPUNCT: u16 = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISALNUM: u16 = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };
