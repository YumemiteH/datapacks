## 获取忽略方块的列表

## @By
# ../../get_sight_block
# THIS
# ------------------------------------------
data modify storage yum:data lib.sight.ignore append value {block:""}
data modify storage yum:data lib.sight.ignore[-1].block set from storage yum:data lib.sight.ignore_list[-1]
data remove storage yum:data lib.sight.ignore_list[-1]

execute if data storage yum:data lib.sight.ignore_list[0] run function yum:lib/private/get_sight_block/get_ignore_list