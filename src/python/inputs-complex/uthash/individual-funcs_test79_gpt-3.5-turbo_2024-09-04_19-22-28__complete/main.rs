use std::collections::HashMap;

#[derive(Debug, PartialEq, Eq, Hash)]
struct HsKey {
    id: i32,
}

#[derive(Debug)]
struct HsValue {
    id: i32,
    tag: i32,
}

fn main() {
    let mut hs_table: HashMap<HsKey, HsValue> = HashMap::new();

    let tmp = HsValue { id: 10, tag: 100 };
    let key = HsKey { id: tmp.id };

    hs_table.insert(key, tmp);

    if let Some(replaced) = hs_table.insert(HsKey { id: 11 }, HsValue { id: 11, tag: 101 }) {
        println!("ERROR, ended up replacing a value, replaced: {:?}", replaced);
    } else {
        println!("added 11 101");
    }

    if let Some(replaced) = hs_table.insert(HsKey { id: 11 }, HsValue { id: 11, tag: 102 }) {
        println!("replaced 11 that had tag {} with tag {}", replaced.tag, 102);
    } else {
        println!("ERROR, expected to replace a value with key: 11");
    }

    println!("{:?}", hs_table);
}
