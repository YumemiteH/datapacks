## 获取当前坐标

## @Params
# @store_x : String x坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率
# @store_y : String y坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率
# @store_z : String z坐标的存储w位置, 存储到数据时还需要规定数据类型和倍率
# ------------------------------------
summon marker ~ ~ ~ {Tags:["yum.lib", "yum.lib.get_pos"]}
$execute store result $(store_x) run data get entity @e[limit=1, tag=yum.lib.get_pos] Pos[0]
$execute store result $(store_y) run data get entity @e[limit=1, tag=yum.lib.get_pos] Pos[1]
$execute store result $(store_z) run data get entity @e[limit=1, tag=yum.lib.get_pos] Pos[2]
kill @e[tag=yum.lib.get_pos]