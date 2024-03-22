#> yum:get_block

#! 获取该位置的方块信息

#! @By
#! 

#! @Params
#! 
#! ====================================================================================================
# 清除上一次存储的方块
data modify storage yum:value block set value ""

# 立方形方块
execute if block ~ ~ ~ #yum:cube run return run function yum:private/get_block/cube
# 不规则方块
execute if block ~ ~ ~ #yum:irregular run return run function yum:private/get_block/irregular