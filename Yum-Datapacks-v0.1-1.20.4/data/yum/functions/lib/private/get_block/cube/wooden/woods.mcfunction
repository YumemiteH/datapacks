#> yum:private/get_block/cube/wooden/woods

#! 获取该位置的方块信息

#! @By
#! yum:private/get_block/cube/wooden if block ~ ~ ~ #yum:cube/wooden/woods

#! @Params
#! 
#! ====================================================================================================
# 获取方块状态
function yum:private/get_block/state/woods with storage yum:value

execute if block ~ ~ ~ #yum:cube/wooden/woods/log run return run function yum:private/get_block/cube/wooden/woods/log with storage yum:value
execute if block ~ ~ ~ #yum:cube/wooden/woods/stripped_log run return run function yum:private/get_block/cube/wooden/woods/stripped_log with storage yum:value
execute if block ~ ~ ~ #yum:cube/wooden/woods/stripped_wood run return run function yum:private/get_block/cube/wooden/woods/stripped_wood with storage yum:value
execute if block ~ ~ ~ #yum:cube/wooden/woods/wood run return run function yum:private/get_block/cube/wooden/woods/wood with storage yum:value