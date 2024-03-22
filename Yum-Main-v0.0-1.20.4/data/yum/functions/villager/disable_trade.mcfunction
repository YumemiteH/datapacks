#> yum:villager/disable_trade

#! 将所有未招募的村民变成傻子, 以禁用交易

#! @By
#! THIS schedule 20t
#! yum:load schedule 20t

#! @Params
#! 

#! @Data
#! entity @e[type=villager, tag=!yum.villager] 
#!   VillagerData.profession
#!   Tags

#! @Score
#! 
#! ====================================================================================================
execute as @e[type=villager, tag=!yum.villager] run function yum:villager/disable_trade_2
schedule function yum:villager/disable_trade 10t