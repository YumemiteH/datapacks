#> yum:item/trigger/use

#! 使用胡萝卜钓竿

#! @By
#! yum:tick as @a[scores= {yum.item.carrot_on_a_stick= 1..}]

#! @Params
#! 

#! @Data
#! 

#! @Score
#! yum.item.use_carrot_on_a_stick @s
#! ====================================================================================================
# 重置记分板 继续检测玩家使用道具
function yum:at_looking {with:{run:'setblock ~ ~ ~ stone', at_front:true}}