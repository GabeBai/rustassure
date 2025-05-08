use std::ffi::c_void;
use std::mem;

type ComparFn<T> = fn(&T, &T) -> std::cmp::Ordering;

pub unsafe fn bsearch<T>(
    key: *const T,
    base: *const T,
    nmemb: usize,
    size: usize,
    compar: ComparFn<T>,
) -> *const T {
    let mut l = 0;
    let mut u = nmemb;

    while l < u {
        let idx = (l + u) / 2;
        let p = base.add(idx); // Pointer arithmetic is unsafe
        let comparison = compar(&*key, &*p); // Dereference the pointers

        match comparison {
            std::cmp::Ordering::Less => u = idx,
            std::cmp::Ordering::Greater => l = idx + 1,
            std::cmp::Ordering::Equal => return p,
        }
    }
    std::ptr::null()
}

// Example usage
fn main() {
    let arr = [1, 2, 3, 4, 5];
    let key = 3;

    unsafe {
        let result = bsearch(
            &key as *const _,
            arr.as_ptr(),
            arr.len(),
            mem::size_of::<i32>(),
            |a, b| a.cmp(b),
        );

        if !result.is_null() {
            println!("Found: {}", *result);
        } else {
            println!("Not found");
        }
    }
}
