## 忽略指定的方块

## @By
# ./check_sight_at

## @Return
# 1 该方块为忽略的方块
# fail 该方块不是忽略的方块
# -----------------------
# 准备开始遍历
# data remove storage yum:data lib.sight.ignore_ergodic[-1]

# 返回遍历后的返回值, 如果检测到忽略的方块, 则会返回 1, 否则返回 fail
return run function yum:lib/private/get_sight_block/is_ignore with storage yum:data lib.sight.ignore_ergodic[-1]