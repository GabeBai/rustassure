fn osys_unlink(path: &str) -> std::io::Result<()> {
    std::fs::remove_file(path)
}
