type __uint64_t = u64;

const _ISupper: __uint64_t = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISlower: __uint64_t = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISalpha: __uint64_t = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISdigit: __uint64_t = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISxdigit: __uint64_t = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISspace: __uint64_t = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISprint: __uint64_t = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISgraph: __uint64_t = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISblank: __uint64_t = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _IScntrl: __uint64_t = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISpunct: __uint64_t = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISalnum: __uint64_t = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}
