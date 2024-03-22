## 获取看向的方块

## @By
# ./check_sight_at
# ------------------------------------------
# 清除标记, 确保只有一个含有 yum.lib.sight_at_block 标签的标记
kill @e[tag=yum.lib.sight_at_block]

# 生成标记
summon marker ~ ~ ~ {Tags:["yum.lib.sight_at_block"]}
# 1t 后清除标记
schedule function yum:lib/private/get_sight_block/clear_marker 1t

# 检测范围内有方块, 将 no_block 设置为 false
execute if score .distance yum.lib matches 1.. run data modify storage yum:data lib.sight.no_block set value false
# 检测范围内无方块, 将 no_block 设置为 true
execute if score .distance yum.lib matches 0 run data modify storage yum:data lib.sight.no_block set value true

# 停止循环
scoreboard players reset .distance yum.lib