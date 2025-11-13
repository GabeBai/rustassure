
use std::rc::{Rc, Weak};
use std::cell::RefCell;

pub fn suffix_object(prev: &Rc<RefCell<CJson>>, item: &Rc<RefCell<CJson>>) {
    prev.borrow_mut().next = Some(Rc::clone(item));
    item.borrow_mut().prev = Some(Rc::downgrade(prev));
}
#[no_mangle]
pub extern "C" fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn __bswap_16(bsx: u16) -> u16 {
    bsx.swap_bytes()
}
pub fn __bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000) >> 56)
        | ((bsx & 0x00ff000000000000) >> 40)
        | ((bsx & 0x0000ff0000000000) >> 24)
        | ((bsx & 0x000000ff00000000) >> 8)
        | ((bsx & 0x00000000ff000000) << 8)
        | ((bsx & 0x0000000000ff0000) << 24)
        | ((bsx & 0x000000000000ff00) << 40)
        | ((bsx & 0x00000000000000ff) << 56)
}
#[no_mangle]
pub extern "C" fn __uint64_identity(x: u64) -> u64 {
    x
}
pub fn cJSON_Delete(item: Option<std::rc::Rc<std::cell::RefCell<CJson>>>) {
    let mut current = item;
    while let Some(node) = current {
        let next = {
            let mut node_ref = node.borrow_mut();
            let next_node = node_ref.next.take();
            if node_ref.type_ & 256 == 0 {
                if let Some(child) = node_ref.child.take() {
                    cJSON_Delete(Some(child));
                }
                node_ref.valuestring = None;
            }
            if node_ref.type_ & 512 == 0 {
                node_ref.string = None;
            }
            next_node
        };
        current = next;
    }
}
#[no_mangle]
pub extern "C" fn __uint32_identity(x: u32) -> u32 {
    x
}
use std::ffi::c_void;

#[no_mangle]
pub extern "C" fn cast_away_const(string: *const c_void) -> *mut c_void {
    string as *mut c_void
}
pub fn add_item_to_array(array: &Rc<RefCell<CJson>>, item: &Rc<RefCell<CJson>>) -> i32 {
    if Rc::ptr_eq(array, item) {
        return 0;
    }
    if array.borrow().child.is_none() {
        array.borrow_mut().child = Some(Rc::clone(item));
        {
            let mut item_ref = item.borrow_mut();
            item_ref.prev = Some(Rc::downgrade(item));
            item_ref.next = None;
        }
    } else {
        let child = array
            .borrow()
            .child
            .as_ref()
            .expect("Child exists")
            .clone();
        {
            let prev_opt = child.borrow().prev.clone();
            if let Some(prev_weak) = prev_opt {
                if let Some(prev_rc) = prev_weak.upgrade() {
                    suffix_object(&prev_rc, item);
                    if let Some(child_ref) = array.borrow().child.clone() {
                        child_ref.borrow_mut().prev = Some(Rc::downgrade(item));
                    }
                }
            }
        }
    }
    1
}
pub fn create_objects() {
    use std::cell::RefCell;
    use std::rc::Rc;
    use std::os::raw::c_char;
    use cjson::{cJSON_AddItemToObject, cJSON_CreateObject, cJSON_CreateString};

    let _strings: [&str; 7] = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
    ];
    let _numbers: [[i32; 3]; 3] = [[0, -1, 0], [1, 0, 0], [0, 0, 1]];
    let _ids: [i32; 4] = [116, 943, 234, 38793];
    let _fields: [(&str, f64, f64, &str, &str, &str, &str, &str); 2] = [
        (
            "zip",
            37.7668,
            -122.3959,
            "",
            "SAN FRANCISCO",
            "CA",
            "94107",
            "US",
        ),
        (
            "zip",
            37.371991,
            -122.026,
            "",
            "SUNNYVALE",
            "CA",
            "94085",
            "US",
        ),
    ];
    let _zero: f64 = 0.0;

    let root = cJSON_CreateObject();
    let name_cstr = b"Jack (\"Bee\") Nimble\0";
    let name_item = cJSON_CreateString(name_cstr.as_ptr() as *const c_char);
    cJSON_AddItemToObject(&root, b"name\0".as_ptr() as *const c_char, &name_item);
}