
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
pub unsafe fn cJSON_New_Item(hooks: &crate::internal_hooks::InternalHooks) -> *mut CJson {
    let size = std::mem::size_of::<CJson>();
    let node = (hooks.allocate)(size) as *mut CJson;
    if !node.is_null() {
        std::ptr::write_bytes(node, 0, 1);
    }
    node
}