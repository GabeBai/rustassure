use std::collections::HashMap;

#[derive(Clone, Copy, PartialEq, Eq, Hash)]
struct RecordKey {
    a: char,
    b: i32,
}

struct Record {
    key: RecordKey,
}

fn main() {
    let mut records: HashMap<RecordKey, Record> = HashMap::new();

    let r = Record {
        key: RecordKey { a: 'a', b: 1 },
    };

    let key_clone = r.key.clone(); // Clone the key

    records.insert(key_clone, r); // Insert the cloned key and original value

    // Rest of your code here
}
