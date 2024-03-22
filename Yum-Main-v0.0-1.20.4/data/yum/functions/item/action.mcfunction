#> yum:item/action

#! 道具效果

#! @By
#! 

#! @Params
#! 

#! @Data
#! 

#! @Score
#! 
#! ====================================================================================================
$execute if data entity @s SelectedItem.tag.yum.action.mainhand[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s SelectedItem.tag.yum.action.mainhand[{trigger:"$(trigger)"}]
$execute if data entity @s Inventory[{Slot:-106b}].tag.yum.action.offhand[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:-106b}].tag.yum.action.offhand[{trigger:"$(trigger)"}]
$execute if data entity @s Inventory[{Slot:103b}].tag.yum.action.head[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:103b}].tag.yum.action.head[{trigger:"$(trigger)"}]
$execute if data entity @s Inventory[{Slot:102b}].tag.yum.action.chest[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:102b}].tag.yum.action.chest[{trigger:"$(trigger)"}]
$execute if data entity @s Inventory[{Slot:100b}].tag.yum.action.legs[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:101b}].tag.yum.action.legs[{trigger:"$(trigger)"}]
$execute if data entity @s Inventory[{Slot:100b}].tag.yum.action.feet[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:100b}].tag.yum.action.feet[{trigger:"$(trigger)"}]

$execute if data entity @s Inventory[{Slot:9b}].tag.yum.action.slot9[{trigger:"$(trigger)"}] run function yum:item/action_run with entity @s Inventory[{Slot:9b}].tag.yum.action.slot9[{trigger:"$(trigger)"}]