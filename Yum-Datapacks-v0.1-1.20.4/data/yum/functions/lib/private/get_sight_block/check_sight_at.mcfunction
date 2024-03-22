## 获取看向的方块

## @By
# ./get_block_forword
# ------------------------------------------
# 忽略执行位置的方块
execute align xyz if entity @a[dx=0, dy=0, dz=0] run return fail

# 忽略指定的方块
data modify storage yum:data lib.sight.ignore_ergodic set from storage yum:data lib.sight.ignore
execute if data storage yum:data lib.sight.ignore_ergodic[-1] if function yum:lib/private/get_sight_block/get_return_of_ignore run return fail

# 如果参数 front 为 true, 获取前方的位置
execute if data storage yum:data lib.sight{front:1b} positioned ^ ^ ^-0.01 run return run function yum:lib/private/get_sight_block/sight_at
# 否则获取当前的位置
function yum:lib/private/get_sight_block/sight_at