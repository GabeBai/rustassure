use std::collections::HashMap;

struct Elt {
    key: Option<&'static Elt>,
    i: i32,
}

fn main() {
    let mut hash: HashMap<&'static Elt, Elt> = HashMap::new();
    
    let e1 = Elt { key: None, i: 1 };
    let e2 = Elt { key: Some(&e2), i: 2 };
    
    assert!(hash.get(&e1).is_none());
    assert!(hash.get(&e2).is_none());
    
    hash.insert(&e1, e1);
    assert_eq!(hash.get(&e1), Some(&e1));
    
    hash.remove(&e1);
    assert!(hash.get(&e1).is_none());
    
    hash.insert(&e2, e2);
    assert_eq!(hash.get(&e2), Some(&e2));
    
    hash.clear();
    assert!(hash.is_empty());
}
