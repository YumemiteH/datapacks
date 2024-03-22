# -------------------------------------------------- main -------------------------------------------------- #

## 更新世界天数 和 年份
execute if predicate yum:is_new_day run function yum:world/time/new_day

## 更新世界出生点
execute summon marker run function yum:world/worldspawn/get_worldspawn

## 检测玩家进入世界 并运行带有 #yum:player_enter_world 标签的函数
scoreboard players operation .player_count.old yum = .player_count yum
execute store result score .player_count yum run execute if entity @a
execute if score .player_count yum > .player_count.old yum run function #yum:player_enter_world

# -------------------------------------------------- item -------------------------------------------------- #

## 清除所有创建的检测物品使用的记分板
# function yum:item/remove_item_use_listener with storage yum:main item.item_use_listener[-1]

## 检测玩家使用道具
execute as @a at @s run function yum:item/tick with entity @s

# -------------------------------------------------- lib -------------------------------------------------- #

## 获取玩家看向的方块的信息
execute as @a at @s run function yum:lib/at_ray {with:{at_front:false, ignore:[water, light], run:'function yum:lib/private/at_looking/get_looking_at'}}
