# -------------------------------------------------- World -------------------------------------------------- #
## 更新世界天数
execute if predicate yum:is_new_day run function yum:world/time/new_day

## 更新世界出生点
execute summon marker run function yum:world/worldspawn/get_worldspawn

# -------------------------------------------------- Item -------------------------------------------------- #
## 检测道具使用, 检测到道具使用时, 道具产生效果
### 胡萝卜钓竿
execute as @a[scores= {yum.item.use_carrot_on_a_stick= 1..}] run function yum:item/private/use_carrot_on_a_stick
### 物品展示框
execute as @a[scores= {yum.item.use_item_frame= 1..}] run function yum:item/private/use_item_frame
### 怪物蛋
execute as @e[limit= 1, tag= yum.item] at @s run function yum:item/private/use_spawn_egg

# mainhand