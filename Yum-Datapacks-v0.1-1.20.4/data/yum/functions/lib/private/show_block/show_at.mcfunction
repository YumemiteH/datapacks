## 遍历显示列表, 显示所有方块

## @By
# ./showing
# THIS
# ---------------------------------------
# 计算是否到达显示时间(取模是否等于0)
$scoreboard players set .show_interval yum.lib $(interval)
scoreboard players operation .showing_interval yum.lib = .showing yum.lib
scoreboard players operation .showing_interval yum.lib %= .show_interval yum.lib
$execute if score .showing_interval yum.lib matches 0 positioned $(x) $(y) $(z) align xyz run function yum:lib/private/show_block/show with storage yum:data lib.show_block.showing_ergodic[-1]

# 显示方块
data remove storage yum:data lib.show_block.showing_ergodic[-1]

# 遍历完成
execute unless data storage yum:data lib.show_block.showing_ergodic[-1] run return fail

# 继续遍历
function yum:lib/private/show_block/show_at with storage yum:data lib.show_block.showing_ergodic[-1]