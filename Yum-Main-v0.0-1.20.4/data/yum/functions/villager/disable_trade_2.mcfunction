#> yum:villager/disable_trade_2

#! 将所有未招募的村民变成傻子, 以禁用交易

#! @By
#! yum:villager/disable_trade as @e[type=villager, tag=!yum.villager]

#! @Params
#! 

#! @Data
#! entity @e[type=villager, tag=!yum.villager] 
#!   VillagerData.profession
#!   Tags

#! @Score
#! 
#! ====================================================================================================
data modify entity @s VillagerData.profession set value "minecraft:nitwit"
tag @s add yum.villager