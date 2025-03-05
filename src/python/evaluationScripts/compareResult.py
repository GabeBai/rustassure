import pandas as pd

import pandas as pd


def compare_csv(file1, file2, output_file):

    df1 = pd.read_csv(file1, usecols=[0, 1, 2])
    df2 = pd.read_csv(file2, usecols=[0, 1, 2])
    df1.columns = ['col1', 'col2', 'col3']
    df2.columns = ['col1', 'col2', 'col3']

    df1['source'] = 'file1'
    df2['source'] = 'file2'

    merged_df = pd.concat([df1, df2])
    diff_df = merged_df.drop_duplicates(subset=['col1', 'col2', 'col3'], keep=False)

    df1_diff = diff_df[diff_df['source'] == 'file1'].drop(columns=['source']).reset_index(drop=True)
    df2_diff = diff_df[diff_df['source'] == 'file2'].drop(columns=['source']).reset_index(drop=True)

    max_len = max(len(df1_diff), len(df2_diff))
    df1_diff = df1_diff.reindex(range(max_len))
    df2_diff = df2_diff.reindex(range(max_len))
    result_df = pd.concat([df1_diff.add_prefix('file1_'), df2_diff.add_prefix('file2_')], axis=1)

    result_df.to_csv(output_file, index=False)
