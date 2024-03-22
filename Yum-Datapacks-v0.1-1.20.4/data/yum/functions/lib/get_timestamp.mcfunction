#> yum:lib/get_timestamp

#! 获取当前的时间戳, 并存储到指定的位置
#! 时间戳格式：
#! year(n) day(2) time(5)

#! @By
#! 

#! @Params
#! $(to) <Path> 得到的时间戳的存储位置

#! @Data
#! storage yum:data lib.get_timestamp
#!   .year <Int> 当前年份
#!   .day <Int> 当前日期
#!   .time <Int> 当天时间
#!   .zero_time <String> 将时间填充为 5 位数使用的 "0"
#!   .zero_day <String> 将日期填充为 2 位数使用的 "0"
#!   .to <Path> 得到的时间戳的存储位置

#! @Score
#! yum .get_timestamp.time
#! ====================================================================================================
# 获取当前年份
data modify storage yum:data lib.get_timestamp.year set from storage yum:world year

# 获取当前日期
data modify storage yum:data lib.get_timestamp.day set from storage yum:world day
execute if score .day yum matches ..9 run data modify storage yum:data lib.get_timestamp.zero_day set value "0"
execute if score .day yum matches 10.. run data modify storage yum:data lib.get_timestamp.zero_day set value ""

# 获取当天时间
execute store result storage yum:data lib.get_timestamp.time short 1 store result score .timestamp.time yum run time query daytime
function yum:lib/private/get_timestamp/get_zero_time

# 获取时间戳的存储位置
$data modify storage yum:data lib.get_timestamp.to set value $(to)

# 将时间拼接为时间戳, 并存储到指定的位置
function yum:lib/private/get_timestamp/append_to_timestamp with storage yum:data lib.get_timestamp

# 清除临时数据
data remove storage yum:data lib.get_timestamp