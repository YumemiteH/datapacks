# 恢复一个物品
$item replace entity @s container.$(Slot) with $(id)$(tag) $(Count)

# 遍历这条记录的所有物品，逐一恢复
data remove storage yum:data lib.temp_inventory.back[0]
execute unless data storage yum:data lib.temp_inventory.back[0].tag run data modify storage yum:data lib.temp_inventory.back[0].tag set value ""
execute if data storage yum:data lib.temp_inventory.back[0] run function yum:lib/private/back_inventory/back_item_common with storage yum:data lib.temp_inventory.back[0]