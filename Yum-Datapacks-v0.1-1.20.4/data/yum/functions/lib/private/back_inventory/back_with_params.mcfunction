# 无记录，无法恢复
$execute unless data storage yum:data lib.temp_inventory.save[{player:$(UUID)}] run return fail

# 物品栏空位
clear @s

# 开始逐一恢复保存的物品
$data modify storage yum:data lib.temp_inventory.back set from storage yum:data lib.temp_inventory.save[{player:$(UUID)}].record[-1]
execute unless data storage yum:data lib.temp_inventory.back[{Slot:-106b}].tag run data modify storage yum:data lib.temp_inventory.back[{Slot:-106b}].tag set value ""
function yum:lib/private/back_inventory/back_item_offhand with storage yum:data lib.temp_inventory.back[{Slot:-106b}]
execute unless data storage yum:data lib.temp_inventory.back[{Slot:103b}].tag run data modify storage yum:data lib.temp_inventory.back[{Slot:103b}].tag set value ""
function yum:lib/private/back_inventory/back_item_head with storage yum:data lib.temp_inventory.back[{Slot:103b}]
execute unless data storage yum:data lib.temp_inventory.back[{Slot:102b}].tag run data modify storage yum:data lib.temp_inventory.back[{Slot:102b}].tag set value ""
function yum:lib/private/back_inventory/back_item_chest with storage yum:data lib.temp_inventory.back[{Slot:102b}]
execute unless data storage yum:data lib.temp_inventory.back[{Slot:101b}].tag run data modify storage yum:data lib.temp_inventory.back[{Slot:101b}].tag set value ""
function yum:lib/private/back_inventory/back_item_legs with storage yum:data lib.temp_inventory.back[{Slot:101b}]
execute unless data storage yum:data lib.temp_inventory.back[{Slot:100b}].tag run data modify storage yum:data lib.temp_inventory.back[{Slot:100b}].tag set value ""
function yum:lib/private/back_inventory/back_item_feet with storage yum:data lib.temp_inventory.back[{Slot:100b}]
execute unless data storage yum:data lib.temp_inventory.back[0].tag run data modify storage yum:data lib.temp_inventory.back[0].tag set value ""
function yum:lib/private/back_inventory/back_item_common with storage yum:data lib.temp_inventory.back[0]

# 恢复经验
$function yum:lib/private/back_inventory/back_xp with storage yum:data lib.temp_inventory.save[{player:$(UUID)}]

# 清除已恢复记录
$data remove storage yum:data lib.temp_inventory.save[{player:$(UUID)}].record[-1]

# 如果该玩家的临时物品栏记录已清空(全部被恢复了)，则直接删除该玩家的临时物品栏，在下次保存物品栏时再重新创建
$execute if data storage yum:data lib.temp_inventory.save[{player:$(UUID), record:[]}] run return run data remove storage yum:data lib.temp_inventory.save[{player:$(UUID)}]