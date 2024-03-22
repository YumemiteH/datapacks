# 运行道具的命令
data modify storage yum:data lib.prop.action set from entity @s data.action

# 清除生成的实体
kill

# 运行道具的命令
execute as @p[scores={yum.lib.prop.spawn_egg=1..}] run function yum:lib/private/prop/action with storage yum:data lib.prop

# 重置分数以继续检测
scoreboard players reset @p[scores={yum.lib.prop.spawn_egg=1..}] yum.lib.prop.spawn_egg

