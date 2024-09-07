use std::collections::HashMap;
use std::fs::File;
use std::io::{BufRead, BufReader};

#[derive(Debug)]
struct NameRec {
    boy_name: String,
}

fn main() {
    let mut names: HashMap<String, NameRec> = HashMap::new();

    let file = File::open("test11.dat").expect("can't open file");
    let reader = BufReader::new(file);

    for line in reader.lines() {
        let line = line.expect("Error reading line");
        let name_rec = NameRec { boy_name: line.clone() };
        names.insert(line, name_rec);
    }

    let mut sorted_names: Vec<&NameRec> = names.values().collect();
    sorted_names.sort_by_key(|name_rec| &name_rec.boy_name);

    for name_rec in sorted_names {
        println!("{}", name_rec.boy_name);
    }
}
