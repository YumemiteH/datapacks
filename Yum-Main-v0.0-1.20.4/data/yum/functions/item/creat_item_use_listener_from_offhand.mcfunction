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
$execute if data storage yum:main item.item_use_listener[{item:"$(offhand_item)"}] run return fail

$scoreboard objectives add yum.item.use.$(offhand_item) used:$(offhand_item)
$data modify storage yum:main item.item_use_listener append value {item:"$(offhand_item)"}