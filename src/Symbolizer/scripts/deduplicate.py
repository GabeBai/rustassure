import os
import sys
import hashlib
from concurrent.futures import ThreadPoolExecutor, as_completed

def compute_file_hash(path, hash_func='md5'):
    h = hashlib.new(hash_func)
    try:
        with open(path, 'rb') as f:
            for chunk in iter(lambda: f.read(4096), b''):
                h.update(chunk)
        return h.hexdigest()
    except Exception as e:
        print(f"Error reading {path}: {e}")
        return None

def manage_dot_files_by_hash(dir_path):
    if not os.path.isdir(dir_path):
        return f"Error: Invalid or non-existent directory specified: {dir_path}"
    try:
        dot_files = []
        for item in os.listdir(dir_path):
            if item.endswith(".dot"):
                file_path = os.path.join(dir_path, item)
                if os.path.isfile(file_path):
                    dot_files.append(file_path)

        seen_hashes = set()
        for f_path in dot_files:
            file_hash = compute_file_hash(f_path)
            if file_hash is None:
                continue  # skip unreadable file
            if file_hash in seen_hashes:
                os.remove(f_path)
                print(f"Deleted duplicate (by hash): {f_path}")
            else:
                seen_hashes.add(file_hash)

        return f"Finished dedup by hash: {dir_path} (kept {len(seen_hashes)} unique .dot files)"

    except PermissionError:
        return f"Permission denied when accessing: {dir_path}"
    except FileNotFoundError:
        return f"Directory not found (possibly deleted): {dir_path}"
    except Exception as e:
        return f"Exception occurred in {dir_path}: {e}"

def main():
    directory_name = sys.argv[1]
    if directory_name == 'C':
        base_dir = "graph_output/C"
    else:
        base_dir = "graph_output/Rust"

    if os.path.isdir(base_dir):
        all_dirs = []
        for root, dirs, files in os.walk(base_dir):
            all_dirs.append(root)

        with ThreadPoolExecutor(max_workers=5) as executor:
            future_to_dir = {
                executor.submit(manage_dot_files_by_hash, d): d
                for d in all_dirs
            }
            for future in as_completed(future_to_dir):
                directory = future_to_dir[future]
                try:
                    result = future.result()
                    print(result)
                except Exception as exc:
                    print(f"{directory} generated an exception: {exc}")
    else:
        print(f"Directory does not exist: {base_dir}")

if __name__ == "__main__":
    main()
