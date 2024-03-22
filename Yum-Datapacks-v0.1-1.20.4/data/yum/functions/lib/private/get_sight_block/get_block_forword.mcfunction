## 循环获取前方的方块

## @By 
# ../../get_sight_block
# THIS
# ------------------------------------------
# 检测到方块
execute unless block ~ ~ ~ #yum:lib/transparent run function yum:lib/private/get_sight_block/check_sight_at

# 距离计数减 1
scoreboard players remove .distance yum.lib 1
# 到达最大距离, 记录最后的检测位置, 并将 no_block 设置为 true
execute if score .distance yum.lib matches 0 run return run function yum:lib/private/get_sight_block/check_sight_at
# 未达到最大距离, 继续向前检测
execute if score .distance yum.lib matches 1.. positioned ^ ^ ^0.01 run function yum:lib/private/get_sight_block/get_block_forword