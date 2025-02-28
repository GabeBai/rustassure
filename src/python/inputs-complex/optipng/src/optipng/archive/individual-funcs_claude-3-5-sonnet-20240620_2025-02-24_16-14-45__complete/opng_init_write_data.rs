use std::ffi::c_int;
use std::ffi::c_long;
use std::ffi::c_uint;
use std::ffi::c_ulong;
use std::ffi::c_ulonglong;

type OpngBitsetT = c_uint;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as c_int;

type PngByte = u8;
type PngUint32 = c_uint;
type PngBytep = *mut PngByte;
type PngConstCharp = *const i8;
type PngStruct = std::ffi::c_void;
type PngStructp = *mut PngStruct;
type OsysFoffsetT = c_long;
type OsysFsizeT = c_ulong;

const INPUT_IS_PNG_FILE: c_uint = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: c_uint = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: c_uint = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: c_uint = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: c_uint = 0x0010;
const INPUT_HAS_APNG: c_uint = 0x0020;
const INPUT_HAS_STRIPPED_DATA: c_uint = 0x0040;
const INPUT_HAS_JUNK: c_uint = 0x0080;
const INPUT_HAS_ERRORS: c_uint = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: c_uint = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: c_uint = 0x2000;
const OUTPUT_HAS_ERRORS: c_uint = 0x4000;

struct OpngProcessStruct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: OsysFoffsetT,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: PngUint32,
    out_plte_trns_size: PngUint32,
    reductions: PngUint32,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

static mut process: OpngProcessStruct = OpngProcessStruct {
    status: 0,
    num_iterations: 0,
    in_datastream_offset: 0,
    in_file_size: 0,
    out_file_size: 0,
    in_idat_size: 0,
    out_idat_size: 0,
    best_idat_size: 0,
    max_idat_size: 0,
    in_plte_trns_size: 0,
    out_plte_trns_size: 0,
    reductions: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    best_compr_level: 0,
    best_mem_level: 0,
    best_strategy: 0,
    best_filter: 0,
};

fn opng_init_write_data() {
    unsafe {
        process.out_file_size = 0;
        process.out_plte_trns_size = 0;
        process.out_idat_size = 0;
    }
}