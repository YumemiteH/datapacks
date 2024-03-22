#> yum:lib/at_ray

#! 在看向的位置执行命令

#! @By
#! *

#! @Params $(with)
#! $(at_front) Boolean : 是否在检测到的前方的位置
#! $(distance) Int : 检测的最大距离
#! $(object) String{block/entity} : 需要检测的对象的类型
#! $(ignore) [] : 需要忽略的对象, 如果 $(object) 的值为 block, 则填写需要忽略的方块, 需要忽略的对象, 如果 $(object) 的值为 entity, 则填写需要忽略的实体, 可以使用标签
#! $(only) [] : 需要检测的对象, 如果 $(object) 的值为 block, 则填写需要忽略的方块, 需要忽略的对象, 如果 $(object) 的值为 entity, 则填写需要忽略的实体, 可以使用标签, 与 $(ignore) 参数一起使用时, $(only) 的优先级更高
#! $(run)* String<Commnad> : 在看向的位置执行的命令

#! @Data
#! storage yum:lib at_ray
#! .at_front = $(at_front)
#! .distance
#! .object
#! .ignore
#! .only
#! .run = $(run)

#! @Score
#! .lib.at_ray.distance yum
#! ====================================================================================================
data modify storage yum:lib at_ray.ignore_object set from storage yum:lib at_ray.ignore[-1]
data remove storage yum:lib at_ray.ignore[-1]

function yum:lib/private/at_ray/get_ignore_list_2 with storage yum:lib at_ray
execute if data storage yum:lib at_ray.ignore[-1] run function yum:lib/private/at_ray/get_ignore_list