#> yum:get_timestamp

#! 将时间拼接为时间戳, 并存储到指定的位置

#! @By
#! yum:lib/get_timestamp with storage yum:data lib.get_timestamp

#! @Params
#! $(year) <Int> 当前年份
#! $(day) <Int> 当前日期
#! $(time) <Int> 当天时间
#! $(zero_time) <String> 将时间填充为 5 位数使用的 "0"
#! $(zero_day) <String> 将日期填充为 2 位数使用的 "0"
#! $(to) <Path> 得到的时间戳的存储位置

#! @Data
#! 

#! @Score
#! 
#! ====================================================================================================
$data modify $(to) set value "$(year)$(zero_day)$(day)$(zero_time)$(time)"