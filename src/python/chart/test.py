import matplotlib.patches as mpatches
import matplotlib.pyplot as plt

fig, ax = plt.subplots()

# 定义颜色图例
blue_light_patch = mpatches.Patch(color='#1f77b4', alpha=0.4)
blue_solid_patch = mpatches.Patch(color='#1f77b4', alpha=1.0)
orange_light_patch = mpatches.Patch(color='#ff7f0e', alpha=0.4)
orange_solid_patch = mpatches.Patch(color='#ff7f0e', alpha=1.0)
green_light_patch = mpatches.Patch(color='#2ca02c', alpha=0.4)
green_solid_patch = mpatches.Patch(color='#2ca02c', alpha=1.0)
red_light_patch = mpatches.Patch(color='#d62728', alpha=0.4)
red_solid_patch = mpatches.Patch(color='#d62728', alpha=1.0)

# 统一创建图例
legend_handles = [
    blue_light_patch, blue_solid_patch,
    orange_light_patch, orange_solid_patch,
    green_light_patch, green_solid_patch,
    red_light_patch, red_solid_patch
]

legend_labels = [
    'Blue: edit distance = 0', 'Blue: edit distance != 0',
    'Orange: edit distance = 0', 'Orange: edit distance != 0',
    'Green: edit distance = 0', 'Green: edit distance != 0',
    'Red: edit distance = 0', 'Red: edit distance != 0'
]

ax.legend(
    handles=legend_handles,
    labels=legend_labels,
    loc='upper right',
    bbox_to_anchor=(1.3, 1.0),  # 控制整体图例位置
    title="Edit Distance",
    ncol=2  # 使每组颜色对齐
)

plt.show()
