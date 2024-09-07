use std::collections::HashMap;

struct CacheEntry {
    key: String,
    value: String,
}

struct LRUCache {
    cache: HashMap<String, CacheEntry>,
    max_items: usize,
}

impl LRUCache {
    fn new(max_items: usize) -> Self {
        LRUCache {
            cache: HashMap::new(),
            max_items,
        }
    }

    fn add_to_cache(&mut self, key: &str, value: &str) {
        let entry = CacheEntry {
            key: key.to_string(),
            value: value.to_string(),
        };

        if self.cache.len() >= self.max_items {
            if let Some((key, _)) = self.cache.iter().next() {
                println!("LRU deleting {} {}", key, self.cache[key].value);
                self.cache.remove(key);
            }
        }

        self.cache.insert(entry.key.clone(), entry);
    }
}
