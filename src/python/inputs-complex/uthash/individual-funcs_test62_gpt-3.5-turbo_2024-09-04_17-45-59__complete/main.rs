use std::mem;

fn trivial_hash(data: &[u8]) -> u32 {
    // Implement your trivial hash function here
    0
}

struct Test {
    a: i32,
    b: i32,
}

fn main() {
    let x: i32 = 0x0042;
    let h = trivial_hash(&x.to_le_bytes());

    let x: i32 = 0x4002;
    let h = trivial_hash(&x.to_le_bytes());

    let test = Test { a: 0x0042, b: 0 };
    let h = trivial_hash(&(test.a.to_le_bytes()));

    let test = Test { a: 0x4002, b: 0 };
    let h = trivial_hash(&(test.a.to_le_bytes()));

    let test = Test { a: 0x0042, b: 0 };
    let h = trivial_hash(&(test.a.to_le_bytes()));

    let test = Test { a: 0x4002, b: 0 };
    let h = trivial_hash(&(test.a.to_le_bytes()));

    let test = Test { a: 0x4002, b: 0 };
    let mut test_ptr: *const Test = &test;
    let mut found_test: Option<&Test> = None;

    // Search for test with a == 0x42
    while !test_ptr.is_null() {
        let current_test = unsafe { &*test_ptr };
        if current_test.a == 0x42 {
            found_test = Some(current_test);
            break;
        }
        test_ptr = current_test as *const Test;
    }

    assert!(found_test.is_some());

    let test = Test { a: 0x0042, b: 0 };
    let mut test_ptr: *const Test = &test;
    let mut found_test: Option<&Test> = None;

    // Search for test with a == 0x0042
    while !test_ptr.is_null() {
        let current_test = unsafe { &*test_ptr };
        if current_test.a == 0x0042 {
            found_test = Some(current_test);
            break;
        }
        test_ptr = current_test as *const Test;
    }

    assert!(found_test.is_some());

    let test = Test { a: 0x4002, b: 0 };
    let mut test_ptr: *const Test = &test;
    let mut found_test: Option<&Test> = None;

    // Search for test with a == 0x43
    while !test_ptr.is_null() {
        let current_test = unsafe { &*test_ptr };
        if current_test.a == 0x43 {
            found_test = Some(current_test);
            break;
        }
        test_ptr = current_test as *const Test;
    }

    assert!(found_test.is_none());

    let test = Test { a: 0x4003, b: 0 };
    let mut test_ptr: *const Test = &test;
    let mut found_test: Option<&Test> = None;

    // Search for test with a == 0x42
    while !test_ptr.is_null() {
        let current_test = unsafe { &*test_ptr };
        if current_test.a == 0x42 {
            found_test = Some(current_test);
            break;
        }
        test_ptr = current_test as *const Test;
    }

    assert!(found_test.is_none());
}
