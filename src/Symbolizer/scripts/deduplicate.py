import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

def manage_dot_files_by_size(dir_path, max_files=20):
    if not os.path.isdir(dir_path):
        return f"Error: Invalid or non-existent directory specified: {dir_path}"

    try:
        dot_files = []
        for item in os.listdir(dir_path):
            if item.endswith(".dot"):
                file_path = os.path.join(dir_path, item)
                if os.path.isfile(file_path):
                    dot_files.append(file_path)

        if len(dot_files) > max_files:
            dot_files_sorted = sorted(dot_files, key=lambda f: os.path.getsize(f))

            keep_indices = set(
                round(i * (len(dot_files_sorted) - 1) / (max_files - 1))
                for i in range(max_files)
            )
            for idx, f_path in enumerate(dot_files_sorted):
                if idx not in keep_indices:
                    os.remove(f_path)
                    print(f"Deleting: {f_path}")

        return f"Finished processing: {dir_path} (kept up to {max_files} .dot files)"

    except PermissionError:
        return f"Permission denied when accessing: {dir_path}"
    except FileNotFoundError:
        return f"Directory not found (possibly deleted): {dir_path}"
    except Exception as e:
        return f"Exception occurred in {dir_path}: {e}"

def main():
    directory_name = sys.argv[1]
    if directory_name == 'c':
        base_dir = "graph_output/C"
    else:
        base_dir = "graph_output/Rust"

    max_files = 20

    if os.path.isdir(base_dir):
        all_dirs = []
        for root, dirs, files in os.walk(base_dir):
            all_dirs.append(root)

        with ThreadPoolExecutor(max_workers=5) as executor:
            future_to_dir = {
                executor.submit(manage_dot_files_by_size, d, max_files): d
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
