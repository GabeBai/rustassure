use std::fs::File;
use std::io::{BufRead, BufReader};
use std::io::prelude::*;
use std::error::Error;

struct CacheEntry {
    line: String,
    number: String,
}

static mut CACHE: Option<Vec<CacheEntry>> = None;

fn add_to_cache(line: &str, number: &str) {
    unsafe {
        if let Some(ref mut cache) = CACHE {
            cache.push(CacheEntry {
                line: line.to_string(),
                number: number.to_string(),
            });
        } else {
            CACHE = Some(vec![CacheEntry {
                line: line.to_string(),
                number: number.to_string(),
            }]);
        }
    }
}

fn main() -> Result<(), Box<dyn Error>> {
    let file = File::open("test65.dat")?;
    let reader = BufReader::new(file);
    let mut i = 0;

    for line in reader.lines() {
        let linebuf = line?;
        let nbuf = i.to_string();
        add_to_cache(&linebuf, &nbuf);
        i += 1;
    }

    Ok(())
}
