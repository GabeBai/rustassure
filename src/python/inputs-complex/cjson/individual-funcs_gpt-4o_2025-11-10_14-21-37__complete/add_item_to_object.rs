
fn bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) | ((bsx & 0x00ff0000) >> 8) | ((bsx & 0x0000ff00) << 8) | ((bsx & 0x000000ff) << 24)
}

fn cjson_strdup(string: *const u8, hooks: &dyn Fn(usize) -> *mut u8) -> *mut u8 {
    if string.is_null() {
        return std::ptr::null_mut();
    }
    let length = unsafe {
        let mut len = 0;
        while *string.add(len) != 0 {
            len += 1;
        }
        len + 1
    };
    let copy = hooks(length);
    if copy.is_null() {
        return std::ptr::null_mut();
    }
    unsafe {
        std::ptr::copy_nonoverlapping(string, copy, length);
    }
    copy
}

fn suffix_object(prev: &mut CJSON, item: CJSON) {
    let mut new_item = Box::new(item);
    new_item.prev = Some(Box::new(CJSON {
        next: None,
        prev: None,
        child: prev.child.take(),
        ctype: prev.ctype,
        valuestring: prev.valuestring.clone(),
        valueint: prev.valueint,
        valuedouble: prev.valuedouble,
        string: prev.string.clone(),
    }));
    prev.next = Some(new_item);
}

fn __uint16_identity(__x: u16) -> u16 {
    __x
}

fn bswap_16(bsx: u16) -> u16 {
    ((bsx >> 8) & 0xff) | ((bsx & 0xff) << 8)
}

fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00000000000000) >> 56)
        | ((__bsx & 0x00ff000000000000) >> 40)
        | ((__bsx & 0x0000ff0000000000) >> 24)
        | ((__bsx & 0x000000ff00000000) >> 8)
        | ((__bsx & 0x00000000ff000000) << 8)
        | ((__bsx & 0x0000000000ff0000) << 24)
        | ((__bsx & 0x000000000000ff00) << 40)
        | ((__bsx & 0x00000000000000ff) << 56)
}

fn __uint64_identity(__x: u64) -> u64 {
    __x
}

fn cjson_delete(mut item: Option<Box<CJSON>>) {
    while let Some(mut current_item) = item {
        item = current_item.next.take();
        if current_item.ctype & 256 == 0 {
            if let Some(child) = current_item.child.take() {
                cjson_delete(Some(child));
            }
            if let Some(valuestring) = current_item.valuestring.take() {
                // No need to manually deallocate, Rust's String will handle it
            }
        }
        if current_item.ctype & 512 == 0 {
            if let Some(string) = current_item.string.take() {
                // No need to manually deallocate, Rust's String will handle it
            }
        }
        // Box will automatically deallocate when it goes out of scope
    }
}

fn __uint32_identity(__x: u32) -> u32 {
    __x
}

fn cast_away_const(string: *const std::ffi::c_void) -> *mut std::ffi::c_void {
    string as *mut std::ffi::c_void
}

struct InternalHooks {
    allocate: fn(usize) -> *mut std::ffi::c_void,
}

fn cjson_new_item(hooks: &InternalHooks) -> Option<Box<CJSON>> {
    let node = (hooks.allocate)(std::mem::size_of::<CJSON>()) as *mut CJSON;
    if !node.is_null() {
        unsafe {
            std::ptr::write_bytes(node, 0, 1);
        }
        Some(unsafe { Box::from_raw(node) })
    } else {
        None
    }
}

fn cjson_create_string(string: &str, hooks: &InternalHooks) -> Option<Box<CJSON>> {
    let item = cjson_new_item(hooks);
    if let Some(mut item) = item {
        item.ctype = 1 << 4;
        let cstr = cjson_strdup(string.as_ptr(), &(|size| (hooks.allocate)(size) as *mut u8));
        if cstr.is_null() {
            cjson_delete(Some(item));
            return None;
        }
        item.valuestring = Some(unsafe {
            String::from_raw_parts(cstr as *mut u8, string.len(), string.len())
        });
        return Some(item);
    }
    None
}

fn add_item_to_object(
    object: &mut CJSON,
    string: &str,
    item: &mut CJSON,
    hooks: &dyn Fn(usize) -> *mut u8,
    constant_key: bool,
) -> i32 {
    let mut new_key: Option<String> = None;
    let mut new_type = 0;

    if std::ptr::eq(object, item) || string.is_empty() || item as *const _ == std::ptr::null() {
        return 0;
    }

    if constant_key {
        new_key = Some(string.to_string());
        new_type = item.ctype | 512;
    } else {
        let duplicated_string = unsafe { cjson_strdup(string.as_ptr(), hooks) };
        if duplicated_string.is_null() {
            return 0;
        }
        new_key = Some(unsafe { std::ffi::CStr::from_ptr(duplicated_string as *const i8) }
            .to_string_lossy()
            .into_owned());
        new_type = item.ctype & !512;
    }

    if (item.ctype & 512) == 0 && item.string.is_some() {
        unsafe {
            std::alloc::dealloc(item.string.take().unwrap().as_ptr() as *mut u8, std::alloc::Layout::new::<u8>());
        }
    }

    item.string = new_key;
    item.ctype = new_type;
    add_item_to_array(object, item.clone())
}
