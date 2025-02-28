   let trans_color = image.trans_color_ptr.as_ref();
   
// Assuming Color16 is defined somewhere in your code
struct Color16 {
    // fields...
}

// When accessing trans_color_ptr
if let Some(trans_color) = image.trans_color_ptr.as_ref() {
    // Use trans_color here
}
