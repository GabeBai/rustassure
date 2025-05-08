use once_cell::sync::Lazy;

static CONFIG: Lazy<MyConfig> = Lazy::new(|| {
    // Initialize your configuration here
    MyConfig::new()
});

struct MyConfig {
    // Your configuration fields
}

impl MyConfig {
    fn new() -> Self {
        // Initialize your config
        MyConfig {
            // Set fields
        }
    }
}
