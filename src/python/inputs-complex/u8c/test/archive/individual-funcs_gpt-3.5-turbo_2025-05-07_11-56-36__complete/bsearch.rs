use std::cmp::Ordering;

fn bsearch<T, F>(key: &T, base: &[T], compar: F) -> Option<&T>
where
    F: Fn(&T, &T) -> Ordering,
{
    let mut l = 0;
    let mut u = base.len();

    while l < u {
        let idx = (l + u) / 2;
        let p = &base[idx];
        let comparison = compar(key, p);

        match comparison {
            Ordering::Less => u = idx,
            Ordering::Greater => l = idx + 1,
            Ordering::Equal => return Some(p),
        }
    }

    None
}
