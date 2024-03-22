#> yum:private/get_block/cube/wooden

#! 获取该位置的方块信息

#! @By
#! yum:private/get_block/cube if block ~ ~ ~ #yum:cube/wooden

#! @Params
#! 
#! ====================================================================================================
# 木头方块
execute if block ~ ~ ~ #yum:cube/wooden/woods run return run function yum:private/get_block/cube/wooden/woods
# 木板
execute if block ~ ~ ~ #yum:cube/wooden/planks run return run function yum:private/get_block/cube/wooden/planks