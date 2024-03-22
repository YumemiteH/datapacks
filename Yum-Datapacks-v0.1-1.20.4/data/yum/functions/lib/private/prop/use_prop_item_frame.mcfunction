# 运行道具的命令
execute as @e[tag=yum.lib.prop, type=item_frame] at @s run function yum:lib/private/prop/use_prop_item_frame_2

# 重置记分板 继续检测玩家使用道具
scoreboard players reset @s yum.lib.prop.item_frame