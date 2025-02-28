import os
import pandas as pd


def get_unique_strings_from_csv(csv_file):
    try:
        df = pd.read_csv(csv_file, usecols=[0], dtype=str) 
        unique_strings = set(df.iloc[:, 0].dropna().unique())
        return unique_strings
    except Exception as e:
        return set()


def get_filenames_from_directory(directory):
    try:
        filenames = set(os.listdir(directory))
        return filenames
    except Exception as e:
        return set()


def find_missing_filenames(csv_file, directory):
    csv_strings = get_unique_strings_from_csv(csv_file)
    directory_filenames = get_filenames_from_directory(directory)

    missing_filenames = directory_filenames - csv_strings
    return missing_filenames


def main():
    csv_file = "/Users/gab/repo/evaluation/Analysis-u8c/V2/edit_distance/best_edit_distances.csv" 
    directory = "/Users/gab/repo/evaluation/Analysis-u8c/V2/graph_output/C"  

    missing_filenames = find_missing_filenames(csv_file, directory)

    for filename in missing_filenames:
        print(filename)


if __name__ == "__main__":
    main()
