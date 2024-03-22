## 在随机坐标处生成标记以快速选中随机坐标

## @Params 
# @x : Int 随机坐标的x坐标
# @y : Int 随机坐标的y坐标
# @z : Int 随机坐标的z坐标

## @By
# ../../get_random_pos
# ----------------------------
$execute positioned ~$(x) ~$(y) ~$(z) align xyz run function yum:lib/private/get_random_pos/summon_random_pos_entity