## 删除该位置的方块显示

## @Params
# @particle : particle 取消显示的粒子
# ------------------------------------------
# 删除该位置的方块显示
$data modify storage yum:data lib.show_block.cancle.particle set value "$(particle)"
function yum:lib/get_pos {store_x:"storage yum:data lib.show_block.cancle.x int 1", store_y:"storage yum:data lib.show_block.cancle.y int 1", store_z:"storage yum:data lib.show_block.cancle.z int 1"}
function yum:lib/private/show_block/delete_from_list with storage yum:data lib.show_block.cancle

# 如果没有其他任何方块在显示, 停止显示方块
execute unless data storage yum:data lib.show_block.showing[0] run schedule clear yum:lib/private/show_block/showing