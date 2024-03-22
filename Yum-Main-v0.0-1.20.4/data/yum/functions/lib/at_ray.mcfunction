#> yum:lib/at_ray

#! 在看向的位置执行命令

#! @By
#! *

#! @Params $(with)
#! $(at_front) Boolean : 是否在检测到的前方的位置
#! $(distance) Int : 检测的最大距离
#! $(object) String{block/entity} : 需要检测的对象的类型
#! $(ignore) [] : 需要忽略的对象, 如果 $(object) 的值为 block, 则填写需要忽略的方块, 需要忽略的对象, 如果 $(object) 的值为 entity, 则填写需要忽略的实体, 可以使用标签
##! $(only) [] : 需要检测的对象, 如果 $(object) 的值为 block, 则填写需要忽略的方块, 需要忽略的对象, 如果 $(object) 的值为 entity, 则填写需要忽略的实体, 可以使用标签, 与 $(ignore) 参数一起使用时, $(only) 的优先级更高
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

# 获取参数
$data modify storage yum:lib at_ray set value $(with)

# 缺少参数 $(run), 报告异常
execute unless data storage yum:lib at_ray.run run return run tellraw @a [{"text": "[YUM - EXCEPTION] 函数 yum:at_ray 缺少参数 ", "color": "red"}, {"text": "run", "bold": true, "underlined": true, "hoverEvent": {"action": "show_text", "value": "String<Command> 在看向的位置执行此命令"}}]
# 其他参数的默认值
data modify storage yum:lib at_ray merge value {at_front:false, distance:5, object:block, ignore:[]}

# 处理参数 $(distance)
execute store result score .lib.at_ray.distance yum run data get storage yum:lib at_ray.distance 50
# 处理参数 $(ignore)
data modify storage yum:lib at_ray.ignore_list set value " "
function yum:lib/private/at_ray/get_ignore_list

# 开始检测
# execute if data storage yum:lib at_ray{object:block} anchored eyes run return run 
execute anchored eyes run function yum:lib/private/at_ray/get_block_forword with storage yum:lib at_ray
