## 持续显示方块

## @By
# ../../show_block
# THIS
# ---------------------------------------
# 准备遍历显示列表, 使所有方块显示
data modify storage yum:data lib.show_block.showing_ergodic set from storage yum:data lib.show_block.showing

# 计时
scoreboard players add .showing yum.lib 2
execute if score .showing yum.lib matches ..0 run scoreboard players set .showing yum.lib 0

# 遍历显示列表
function yum:lib/private/show_block/show_at with storage yum:data lib.show_block.showing_ergodic[-1]
schedule function yum:lib/private/show_block/showing 2t