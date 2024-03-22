#> yum:lib/private/get_timestamp/get_zero_time

#! 获取将时间填充为 5 位数使用的 "0"

#! @By
#! yum:lib/get_timestamp

#! @Params
#! 

#! @Data
#! storage yum:data lib.get_timestamp
#!   .zero_time 将时间填充为 5 位数使用的 "0"

#! @Score
#! yum .get_timestamp.time
#! ====================================================================================================
execute if score .get_timestamp.time yum matches ..9 run return run data modify storage yum:data lib.get_timestamp.zero_time set value "0000"
execute if score .get_timestamp.time yum matches 10..99 run return run data modify storage yum:data lib.get_timestamp.zero_time set value "000"
execute if score .get_timestamp.time yum matches 100..999 run return run data modify storage yum:data lib.get_timestamp.zero_time set value "00"
execute if score .get_timestamp.time yum matches 1000..9999 run return run data modify storage yum:data lib.get_timestamp.zero_time set value "0"
# execute if score .get_timestamp.time yum matches 10000.. run return run 
    data modify storage yum:data lib.get_timestamp.zero_time set value ""