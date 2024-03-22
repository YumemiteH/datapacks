#> yum:item/use

#! 

#! @By
#! yum:tick as @a[scores= {yum.item.carrot_on_a_stick= 1..}]

#! @Params
#! 

#! @Data
#! 

#! @Score
#! yum.item.use_carrot_on_a_stick @s
#! ====================================================================================================
$scoreboard objectives remove yum.item.use.$(item)
data remove storage yum:main item.item_use_listener[-1]

execute if data storage yum:main item.item_use_listener[0] run function yum:item/remove_item_use_listener with storage yum:main item.item_use_listener[-1]