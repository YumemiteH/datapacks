# 该玩家已保存过多记录, 最早的记录会被覆盖
$execute if data storage yum:data lib.temp_inventory.save[{player:$(UUID)}].record[127] run data remove storage yum:data lib.temp_inventory.save[{player:$(UUID)}].record[0]

# 如果该玩家没有临时物品栏 创建该玩家的临时物品栏
$execute unless data storage yum:data lib.temp_inventory.save[{player:$(UUID)}] run data modify storage yum:data lib.temp_inventory.save append value {player:$(UUID)}

# 保存物品信息
$data modify storage yum:data lib.temp_inventory.save[{player:$(UUID)}].record append from entity @s Inventory
# 保存经验信息
$execute store result storage yum:data lib.temp_inventory.save[{player:$(UUID)}].xp_level int 1 run xp query @s levels
$execute store result storage yum:data lib.temp_inventory.save[{player:$(UUID)}].xp_point int 1 run xp query @s points