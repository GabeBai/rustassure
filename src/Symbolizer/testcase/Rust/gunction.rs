struct Student {
    i: i32,
//    name: String,
    j: i32,
}

fn gunction(sptr: &mut Student, d: i32) -> i32 {
    sptr.i = d / 100;
    // sptr.name = String::from("Hello");

    if sptr.i > 10 {
        sptr.i = 300;
    }

    if sptr.i > 100 {
        println!("{}", sptr.i);
    }
    
    sptr.j = sptr.j + sptr.j;
    0
}

fn main() {
    let mut student = Student { i: 0, j: 5 };
    gunction(&mut student, 2500);
}
