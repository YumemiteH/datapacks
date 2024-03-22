## 用粒子包裹方块边缘, 使其更加明显

## @Params
# @particle : Particle 显示的粒子
# @interval : Int<%2=0> 显示的粒子的时间间隔
# ------------------------------------------
# 将方块加入显示列表
$data modify storage yum:data lib.show_block.showing append value {particle:"$(particle)", interval:$(interval)}
function yum:lib/get_pos {store_x:"storage yum:data lib.show_block.showing[-1].x int 1", store_y:"storage yum:data lib.show_block.showing[-1].y int 1", store_z:"storage yum:data lib.show_block.showing[-1].z int 1"}

# 如果没有其他任何方块在显示, 持续显示方块
execute unless data storage yum:data lib.show_block.showing[1] run schedule function yum:lib/private/show_block/showing 2t

# show_block
#  - showing : [{}]
#     - x : Int
#     - y : Int
#     - z : Int
#     - interval : Int
#     - particle : Particle
#  - showing_ergodic : [{}]
#     - x : Int
#     - y : Int
#     - z : Int
#     - interval : Int
#     - particle : Particle