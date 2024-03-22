#> yum:item/private/use_item_frame

#! 使用物品展示框

#! @By
#! yum:tick as @a[scores= {yum.item.item_frame= 1..}]

#! @Params
#! 

#! @Data
#!

#! @Score
#! yum.item.use_item_frame @s
#! ====================================================================================================
# 运行道具的命令
execute as @e[tag=yum.item, type=item_frame] at @s run function yum:lib/private/prop/use_prop_item_frame_2

# 重置记分板 继续检测玩家使用道具
scoreboard players reset @s yum.item.use_item_frame