#> yum:item/private/use_carrot_on_a_stick

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
scoreboard players reset @s yum.item.use_carrot_on_a_stick

# 如果主手持道具, 运行主手拿着的道具的命令
execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick"}.tag.yum.item.action at @s run return run function yum:item/private/action with entity @s SelectedItem.tag.yum.item
# 如果主手未持有道具, 而副手持道具, 运行副手拿着的道具的命令
execute if data entity @s Inventory[{Slot:-106b}].tag.yum.item.action at @s run function yum:item/private/action with entity @s Inventory[{Slot:-106b}].tag.yum