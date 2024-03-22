# 道具效果
# 检测是否手持道具(而不是普通的胡萝卜钓竿)
    # 如果主手持道具, 运行主手拿着的道具的命令
    execute if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick"}.tag.yum{prop:true} at @s run function yum:lib/private/prop/action with entity @s SelectedItem.tag.yum
    # 如果主手未持有道具, 而副手持道具, 运行副手拿着的道具的命令
    execute unless data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick"} if data entity @s Inventory[{Slot:-106b}].tag.yum{prop:true} at @s run function yum:lib/private/prop/action with entity @s Inventory[{Slot:-106b}].tag.yum

# 重置记分板 继续检测玩家使用道具
scoreboard players reset @s yum.lib.prop.carrot_on_a_stick