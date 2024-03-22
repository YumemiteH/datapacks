## 获取看向的方块

## @Params
# @distance : Int<1..128> 最大检测距离
# @front : Boolean 是否获取前方的方块
# @ignore : List<Block> 忽略的方块列表
# ------------------------------------------
# 将最大检测距离保存到记分板, 当检测距离达到最大检测距离时, 停止检测
$scoreboard players set .distance yum.lib $(distance)
scoreboard players operation .distance yum.lib *= .100 yum.lib

# 将参数 @front 保存到数据中
$data modify storage yum:data lib.sight.front set value $(front)b
# 将参数 @ignore 保存到数据中
$data modify storage yum:data lib.sight.ignore_list set value $(ignore)
data remove storage yum:data lib.sight.ignore
function yum:lib/private/get_sight_block/get_ignore_list

# 开始检测
execute anchored eyes run function yum:lib/private/get_sight_block/get_block_forword

# sight
#  - no_block : Boolean
#  - front : Boolean
#  - ignore : [{}]
#     - block : Block
#  - ignore_ergodic : [{}]
#     - block : Block
#  - ignore_list : [String]