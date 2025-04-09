use std::io::Write;
use std::ptr;

struct Timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

type PngByte = u8;
type PngBytep = *mut PngByte;
type PngConstCharp = *const i8;

struct PngStruct;
type PngStructp = *mut PngStruct;

static mut CON_FILE: Option<std::fs::File> = None;

fn app_progress(current_step: u64, total_steps: u64) {
    unsafe {
        if let Some(ref mut con_file) = CON_FILE {
            con_file.flush().ok();
        }
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}
