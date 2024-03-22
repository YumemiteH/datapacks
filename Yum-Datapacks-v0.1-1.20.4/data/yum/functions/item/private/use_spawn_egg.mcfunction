#> yum:item/private/use_spawn_egg

#! 

#! @By
#! yum:tick as @e[limit= 1, tag= yum.item] at @s

#! @Params
#! 

#! @Data
#! storage yum:data item.action 道具产生的效果

#! @Score
#! yum.item.use_spawn_egg @p[scores= {yum.item.use_spawn_egg= 1..}]
#! ====================================================================================================
# 运行道具的命令
data modify storage yum:data item.action set from entity @s data.action

# 清除生成的实体
kill

# 运行道具的命令
execute unless entity @p[scores= {yum.item.use_spawn_egg= 1..}] run function yum:item/private/action with storage yum:data item
execute as @p[scores= {yum.item.use_spawn_egg= 1..}] run function yum:item/private/action with storage yum:data item

# 重置分数以继续检测
scoreboard players reset @p[scores= {yum.item.use_spawn_egg= 1..}] yum.item.use_spawn_egg