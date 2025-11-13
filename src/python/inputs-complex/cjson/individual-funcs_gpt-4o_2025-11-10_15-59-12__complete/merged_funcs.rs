
struct CJSON {
    next: Option<Box<CJSON>>,
    prev: Option<Box<CJSON>>,
    child: Option<Box<CJSON>>,
    r#type: i32,
    valuestring: Option<String>,
    valueint: i32,
    valuedouble: f64,
    string: Option<String>,
}


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

fn add_item_to_object(
    object: &mut CJSON,
    string: &str,
    item: &mut CJSON,
    hooks: &dyn Fn(usize) -> *mut u8,
    constant_key: bool,
) -> i32 {
    let mut new_key: Option<String> = None;
    let mut new_type = 0;

    if std::ptr::eq(object, item) || string.is_empty() || item.string.is_none() {
        return 0;
    }

    if constant_key {
        new_key = Some(string.to_string());
        new_type = item.r#type | 512;
    } else {
        let duplicated_string = unsafe { cjson_strdup(string.as_ptr(), hooks) };
        if duplicated_string.is_null() {
            return 0;
        }
        new_key = Some(unsafe { String::from_raw_parts(duplicated_string, string.len(), string.len()) });
        new_type = item.r#type & !512;
    }

    if item.r#type & 512 == 0 && item.string.is_some() {
        if let Some(old_string) = item.string.take() {
            unsafe {
                let old_string_ptr = old_string.as_ptr() as *mut u8;
                let old_string_len = old_string.len();
                let old_string_cap = old_string.capacity();
                std::mem::drop(String::from_raw_parts(old_string_ptr, old_string_len, old_string_cap));
            }
        }
    }

    item.string = new_key;
    item.r#type = new_type;
    add_item_to_array(object, item)
}

fn cjson_add_item_to_object(object: &mut CJSON, string: &str, item: &mut CJSON) -> i32 {
    add_item_to_object(object, string, item, &|size| {
        let layout = std::alloc::Layout::from_size_align(size, std::mem::align_of::<u8>()).unwrap();
        unsafe { std::alloc::alloc(layout) }
    }, false)
}

fn create_objects() {
    let mut root: Option<Box<CJSON>> = None;
    let strings = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
    ];
    let numbers = [
        [0, -1, 0],
        [1, 0, 0],
        [0, 0, 1],
    ];
    let ids = [116, 943, 234, 38793];
    let zero = 0.0;
    root = Some(Box::new(CJSON {
        next: None,
        prev: None,
        child: None,
        r#type: 0,
        valuestring: None,
        valueint: 0,
        valuedouble: 0.0,
        string: None,
    }));
    cjson_add_item_to_object(
        root.as_mut().unwrap(),
        "name",
        &mut CJSON {
            next: None,
            prev: None,
            child: None,
            r#type: 0,
            valuestring: Some("Jack (\"Bee\") Nimble".to_string()),
            valueint: 0,
            valuedouble: 0.0,
            string: None,
        },
    );
}

fn main() {
    create_objects();
}
