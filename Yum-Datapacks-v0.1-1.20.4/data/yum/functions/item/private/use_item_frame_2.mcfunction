#> yum:item/private/use_item_frame_2

#! 道具效果

#! @By
#! yum:item/private/use_item_frame as @e[tag=yum.item, type=item_frame] at @s

#! @Params
#! 

#! @Data
#! 

#! @Score
#! 
#! ====================================================================================================
# 获取道具命令
tag @s remove yum.item
data modify storage yum:data item.action set from entity @s Tags[0]

# 清除生成的实体
kill

# 运行道具命令
function yum:item/private/action with storage yum:data item
data remove storage yum:data item