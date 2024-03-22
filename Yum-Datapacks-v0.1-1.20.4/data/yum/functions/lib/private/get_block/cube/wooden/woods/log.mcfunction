#> yum:private/get_block/cube/wooden/woods/log

#! 获取该位置的方块信息

#! @By
#! yum:private/get_block/cube/wooden/woods if block ~ ~ ~ #yum:cube/wooden/woods/log

#! @Params
#! 
#! ====================================================================================================
$execute if block ~ ~ ~ minecraft:oak_log run return run data modify storage yum:value block set value "oak_log[$(block)]"
$execute if block ~ ~ ~ minecraft:birch_log run return run data modify storage yum:value block set value "birch_log[$(block)]"
$execute if block ~ ~ ~ minecraft:acacia_log run return run data modify storage yum:value block set value "acacia_log[$(block)]"
$execute if block ~ ~ ~ minecraft:cherry_log run return run data modify storage yum:value block set value "cherry_log[$(block)]"
$execute if block ~ ~ ~ minecraft:jungle_log run return run data modify storage yum:value block set value "jungle_log[$(block)]"
$execute if block ~ ~ ~ minecraft:spruce_log run return run data modify storage yum:value block set value "spruce_log[$(block)]"
$execute if block ~ ~ ~ minecraft:dark_oak_log run return run data modify storage yum:value block set value "dark_oak_log[$(block)]"
$execute if block ~ ~ ~ minecraft:mangrove_log run return run data modify storage yum:value block set value "mangrove_log[$(block)]"
$execute if block ~ ~ ~ minecraft:bamboo_block run return run data modify storage yum:value block set value "bamboo_block[$(block)]"
$execute if block ~ ~ ~ minecraft:crimson_stem run return run data modify storage yum:value block set value "crimson_stem[$(block)]"
$execute if block ~ ~ ~ minecraft:warped_stem run return run data modify storage yum:value block set value "warped_stem[$(block)]"