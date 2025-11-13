
struct CJson {
    pub next: Option<NonNull<CJson>>,
    pub prev: Option<NonNull<CJson>>,
    pub child: Option<NonNull<CJson>>,
    pub type_: i32,
    pub valuestring: Option<String>,
    pub valueint: i32,
    pub valuedouble: f64,
    pub string: Option<String>,
}

use std::ptr::NonNull;

pub fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn __bswap_16(bsx: u16) -> u16 {
    (bsx >> 8) | (bsx << 8)
}
pub fn __bswap_64(__bsx: u64) -> u64 {
    __bsx.swap_bytes()
}
pub fn __uint64_identity(x: u64) -> u64 {
    x
}
pub fn __uint32_identity(x: u32) -> u32 {
    x
}
use std::ffi::c_void;

pub fn cast_away_const(string: *const c_void) -> *mut c_void {
    string as *mut c_void
}
#[no_mangle]
pub unsafe extern "C" fn cJSON_AddItemToObject(
    object: *mut CJson,
    string: *const std::os::raw::c_char,
    item: *mut CJson,
) -> i32 {
    #[repr(C)]
    struct internal_hooks {
        _private: [u8; 0],
    }

    extern "C" {
        fn add_item_to_object(
            object: *mut CJson,
            string: *const std::os::raw::c_char,
            item: *mut CJson,
            hooks: *const internal_hooks,
            constant_key: i32,
        ) -> i32;
        static global_hooks: internal_hooks;
    }
    add_item_to_object(object, string, item, &global_hooks, 0)
}
fn create_objects() {
    use std::os::raw::c_char;
    use std::ptr;
    extern "C" {
        fn cJSON_CreateObject() -> *mut CJson;
        fn cJSON_AddItemToObject(object: *mut CJson, key: *const c_char, item: *mut CJson);
        fn cJSON_CreateString(string: *const c_char) -> *mut CJson;
    }

    let mut root: *mut CJson = ptr::null_mut();
    let _fmt: *mut CJson = ptr::null_mut();
    let _img: *mut CJson = ptr::null_mut();
    let _thm: *mut CJson = ptr::null_mut();
    let _fld: *mut CJson = ptr::null_mut();
    let _i = 0;
    let _strings: [&'static str; 7] = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
    ];
    let _numbers: [[i32; 3]; 3] = [
        [0, -1, 0],
        [1, 0, 0],
        [0, 0, 1],
    ];
    let _ids: [i32; 4] = [116, 943, 234, 38793];
    unsafe {
        root = cJSON_CreateObject();
        cJSON_AddItemToObject(
            root,
            b"name\0".as_ptr() as *const c_char,
            cJSON_CreateString(b"Jack (\"Bee\") Nimble\0".as_ptr() as *const c_char),
        );
    }
}
fn main() {
    unsafe {
        create_objects();
    }
}