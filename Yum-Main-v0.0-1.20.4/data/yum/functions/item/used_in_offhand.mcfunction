#> yum:item/trigger/use

#! 使用胡萝卜钓竿

#! @By
#! yum:tick as @a[scores= {yum.item.carrot_on_a_stick= 1..}]

#! @Params
#! 

#! @Data
#! 

#! @Score
#! yum.item.use_carrot_on_a_stick @s
#! ====================================================================================================
# 重置记分板 继续检测玩家使用道具
$scoreboard players reset @s yum.item.use.$(offhand_item)

# 如果主手持道具, 运行主手拿着的道具的命令
function yum:item/run_item_command_after_used_in_offhand with entity @s