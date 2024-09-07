use std::collections::HashMap;

#[derive(Debug)]
struct ExampleUser {
    id: i32,
    cookie: i32,
}

#[derive(Debug)]
struct Users {
    users: HashMap<i32, ExampleUser>,
    user_id: i32,
}

impl Users {
    fn new() -> Self {
        Users {
            users: HashMap::new(),
            user_id: 0,
        }
    }

    fn init_users(&mut self, need_malloc_cnt: i32) {
        let user = ExampleUser {
            id: self.user_id,
            cookie: 0, // Initialize cookie to 0
        };

        self.user_id += 1;

        self.users.insert(user.id, user);
    }
}
