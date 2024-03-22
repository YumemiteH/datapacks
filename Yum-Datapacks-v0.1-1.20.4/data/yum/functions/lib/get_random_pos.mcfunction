## 获取随机坐标

## @Params
# @dx : Int 随机位置的选取范围在x轴的大小
# @dy : Int 随机位置的选取范围在y轴的大小
# @dz : Int 随机位置的选取范围在z轴的大小
# ---------------------------------------------
# 获取3个随机数以产生随机坐标
$execute store result storage yum:data lib.random_pos.x int 1 run random value 0..$(dx)
$execute store result storage yum:data lib.random_pos.y int 1 run random value 0..$(dy)
$execute store result storage yum:data lib.random_pos.z int 1 run random value 0..$(dz)

# 在产生的随机坐标处生成标记
function yum:lib/private/get_random_pos/at_random_pos with storage yum:data lib.random_pos
# 1t 后清除生成的标记
schedule function yum:lib/private/get_random_pos/clear_random_pos_entity 1t