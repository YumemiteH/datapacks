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
$execute if data storage yum:main item.item_use_listener[{item:"$(mainhand_item)"}] run return fail

$scoreboard objectives add yum.item.use.$(mainhand_item) used:$(mainhand_item)
$data modify storage yum:main item.item_use_listener append value {item:"$(mainhand_item)"}