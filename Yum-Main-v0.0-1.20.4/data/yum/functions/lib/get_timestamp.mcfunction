#> yum:get_timestamp

#! 获取当前的时间戳

#! @By
#! 

#! @Params
#! 
#! ====================================================================================================
# 获取当天时间
execute store result score .time yum run time query daytime

# 获取时间戳
execute if score .time yum matches ..9 run return run data modify storage yum:temp timestamp set value "0000"
execute if score .time yum matches 10..99 run return run data modify storage yum:temp timestamp set value "000"
execute if score .time yum matches 100..999 run return run data modify storage yum:temp timestamp set value "00"
execute if score .time yum matches 1000..9999 run return run data modify storage yum:temp timestamp set value "0"
execute if score .time yum matches 10000.. run return run data modify storage yum:temp timestamp set value ""
function yum:private/time/get_timestamp with storage yum:world

$data modify storage yum:world timestamp set value "$(day)$(timestamp)$(time)"