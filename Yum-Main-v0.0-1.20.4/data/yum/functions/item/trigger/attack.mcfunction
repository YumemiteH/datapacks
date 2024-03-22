#> yum:item/trigger/attack

#! 

#! @By
#! 

#! @Params
#! 

#! @Data
#!

#! @Score
#!
#! ====================================================================================================

# 触发器激活 道具产生效果
function yum:item/action {trigger:attack}

# 恢复成就继续检测
advancement revoke @s only yum:trigger/attack
