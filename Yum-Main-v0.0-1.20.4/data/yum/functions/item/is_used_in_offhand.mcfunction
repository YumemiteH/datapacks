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
$execute if score @s yum.item.use.$(offhand_item) matches 1.. run \
    function yum:item/used_in_offhand with storage yum:main item.player