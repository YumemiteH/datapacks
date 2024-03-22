## 忽略指定的方块

## @Params
# @ignore : Block 忽略的一个方块

## @By
# ./get_return_of_ignore

## @Return
# 1 该方块为忽略的方块
# fail 该方块不是忽略的方块
# ------------------------------------------
# 该方块为忽略的方块, 返回 1
$execute if block ~ ~ ~ $(block) run return 1

# 该方块不是忽略的方块
# 继续遍历
data remove storage yum:data lib.sight.ignore_ergodic[-1]
# 如果已遍历结束, 返回 fail 表示该方块不是忽略的方块
execute unless data storage yum:data lib.sight.ignore_ergodic[0] run return fail

# 传递返回值, 如果后续检测到忽略的方块, 将返回 1
return run function yum:lib/private/get_sight_block/is_ignore with storage yum:data lib.sight.ignore_ergodic[-1]