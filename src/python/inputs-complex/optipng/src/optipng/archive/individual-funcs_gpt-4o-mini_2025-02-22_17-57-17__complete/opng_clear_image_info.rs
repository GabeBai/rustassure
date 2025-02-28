struct YourStruct {
    field1: i32,
    field2: i32,
}

impl YourStruct {
    fn new(field1: i32, field2: i32) -> Self {
        YourStruct { field1, field2 }
    }
}

fn main() {
    let instance = YourStruct::new(10, 20);
    println!("field1: {}, field2: {}", instance.field1, instance.field2);
}
