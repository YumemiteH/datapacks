#> yum:private/get_block/cube

#! 获取该位置的方块信息

#! @By
#! yum:get_block if block ~ ~ ~ #yum:cube

#! @Params
#! 
#! ====================================================================================================
# 木制方块
execute if block ~ ~ ~ #yum:cube/wooden run return run function yum:private/get_block/cube/wooden