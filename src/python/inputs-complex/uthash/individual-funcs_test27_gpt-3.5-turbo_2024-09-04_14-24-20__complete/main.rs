struct El {
    id: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
}

impl Default for El {
    fn default() -> Self {
        El {
            id: 0,
            next: None,
            prev: None,
        }
    }
}
