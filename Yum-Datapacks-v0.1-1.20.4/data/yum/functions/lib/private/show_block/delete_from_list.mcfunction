## 将方块从显示列表删除

## @Params
# @x : Int 显示方块的x坐标
# @y : Int 显示方块的y坐标
# @x : Int 显示方块的z坐标

## @By
# ../../cancle_show_block
# ------------------------------------------
# 将方块从显示列表删除
$data remove storage yum:data lib.show_block.showing[{x:$(x), y:$(y), z:$(z), particle:"$(particle)"}]