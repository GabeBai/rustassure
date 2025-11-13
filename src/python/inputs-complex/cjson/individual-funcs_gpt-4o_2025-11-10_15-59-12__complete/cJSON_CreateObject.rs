
fn bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24)
        | ((bsx & 0x00ff0000) >> 8)
        | ((bsx & 0x0000ff00) << 8)
        | ((bsx & 0x000000ff) << 24)
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

fn suffix_object(prev: &mut CJSON, item: &mut CJSON) {
    prev.next = Some(Box::new(CJSON {
        next: item.next.take(),
        prev: item.prev.take(),
        child: item.child.take(),
        r#type: item.r#type,
        valuestring: item.valuestring.clone(),
        valueint: item.valueint,
        valuedouble: item.valuedouble,
        string: item.string.clone(),
    }));
    item.prev = Some(Box::new(CJSON {
        next: prev.next.take(),
        prev: prev.prev.take(),
        child: prev.child.take(),
        r#type: prev.r#type,
        valuestring: prev.valuestring.clone(),
        valueint: prev.valueint,
        valuedouble: prev.valuedouble,
        string: prev.string.clone(),
    }));
}

fn __uint16_identity(__x: u16) -> u16 {
    __x
}

fn __bswap_16(__bsx: u16) -> u16 {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
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

fn __uint64_identity(x: u64) -> u64 {
    x
}

fn cjson_delete(mut item: Option<Box<CJSON>>) {
    while let Some(mut current_item) = item {
        let next = current_item.next.take();
        if current_item.r#type & 256 == 0 {
            if let Some(child) = current_item.child.take() {
                cjson_delete(Some(child));
            }
            if let Some(valuestring) = current_item.valuestring.take() {
                // Automatically deallocated when going out of scope
            }
        }
        if current_item.r#type & 512 == 0 {
            if let Some(string) = current_item.string.take() {
                // Automatically deallocated when going out of scope
            }
        }
        // Box will automatically deallocate when it goes out of scope
        item = next;
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

fn add_item_to_array(array: &mut CJSON, item: &mut CJSON) -> i32 {
    if item as *const _ == std::ptr::null() || array as *const _ == std::ptr::null() || array as *const _ == item as *const _ {
        return 0;
    }
    if array.child.is_none() {
        array.child = Some(Box::new(CJSON {
            next: item.next.take(),
            prev: item.prev.take(),
            child: item.child.take(),
            r#type: item.r#type,
            valuestring: item.valuestring.clone(),
            valueint: item.valueint,
            valuedouble: item.valuedouble,
            string: item.string.clone(),
        }));
        item.prev = Some(Box::new(CJSON {
            next: item.next.take(),
            prev: item.prev.take(),
            child: item.child.take(),
            r#type: item.r#type,
            valuestring: item.valuestring.clone(),
            valueint: item.valueint,
            valuedouble: item.valuedouble,
            string: item.string.clone(),
        }));
        item.next = None;
    } else {
        if let Some(ref mut child_prev) = array.child.as_mut().unwrap().prev {
            suffix_object(child_prev, item);
            array.child.as_mut().unwrap().prev = Some(Box::new(CJSON {
                next: item.next.take(),
                prev: item.prev.take(),
                child: item.child.take(),
                r#type: item.r#type,
                valuestring: item.valuestring.clone(),
                valueint: item.valueint,
                valuedouble: item.valuedouble,
                string: item.string.clone(),
            }));
        }
    }
    1
}

fn cjson_create_object() -> Option<Box<CJSON>> {
    let hooks = InternalHooks { allocate: None }; // Assuming `allocate` is an Option or similar
    let item = cjson_new_item(&hooks);
    if let Some(mut item) = item {
        item.r#type = 1 << 6;
        return Some(item);
    }
    None
}
