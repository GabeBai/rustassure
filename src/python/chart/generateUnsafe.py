import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np
from matplotlib.legend_handler import HandlerTuple

df = pd.read_csv('unsafe_data.csv')
df["top_part"] = df["Total_lines"] - df["safe_lines"]

repos = df["Repository"].unique()
models = df["Model"].unique()

x = np.linspace(0, len(repos) * 1.3, len(repos))
width = 0.25
multiplier = 0

fig, ax = plt.subplots(figsize=(10, 6))

colors_map = {
    "gpt-4o": "#1f77b4",
    "gpt-3.5-turbo": "#ff7f0e",
    "gpt-4o-mini": "#2ca02c",
    "claude-3-5-sonnet": "#d62728"
}

for model in models:
    sub = df[df["Model"] == model]

    zero_list = []
    top_list = []
    for r in repos:
        row = sub[sub["Repository"] == r]
        if len(row) > 0:
            z_val = row["safe_lines"].values[0]
            t_val = row["top_part"].values[0]
        else:
            z_val = 0
            t_val = 0
        zero_list.append(z_val)
        top_list.append(t_val)

    offset = width * multiplier * 1.3
    main_color = colors_map.get(model, "#888888")


    ax.bar(x + offset, zero_list, width,
           color=main_color, alpha=0.4, label=None)

    ax.bar(x + offset, top_list, width, bottom=zero_list,
           color=main_color, alpha=1.0, label=None)

    multiplier += 1


ax.set_xticks(x + width * (len(models) - 1) / 2)
ax.set_xticklabels(repos)
ax.set_ylabel("Line of Codes")


legend_patches = []
for model_name, color in colors_map.items():
    patch = mpatches.Patch(color=color, alpha=1.0, label=model_name)
    legend_patches.append(patch)


first_legend = ax.legend(handles=legend_patches, title="Model", loc='upper left')
ax.add_artist(first_legend)



blue_light_patch = mpatches.Patch(color='#1f77b4', alpha=0.4)
orange_light_patch = mpatches.Patch(color='#ff7f0e', alpha=0.4)
green_light_patch = mpatches.Patch(color='#2ca02c', alpha=0.4)
red_light_patch = mpatches.Patch(color='#d62728', alpha=0.4)

blue_solid_patch = mpatches.Patch(color='#1f77b4', alpha=1.0)
orange_solid_patch = mpatches.Patch(color='#ff7f0e', alpha=1.0)
green_solid_patch = mpatches.Patch(color='#2ca02c', alpha=1.0)
red_solid_patch = mpatches.Patch(color='#d62728', alpha=1.0)

ax.legend(
    handles=[blue_light_patch, blue_solid_patch],
    labels=['safe LOC', 'unsafe LOC'],
    handler_map={tuple: HandlerTuple()},
    loc='upper right',
    title="Loc"
)

plt.tight_layout()
# plt.show()
plt.savefig('../figs/unsafe.pdf', orientation="landscape", bbox_inches='tight')
