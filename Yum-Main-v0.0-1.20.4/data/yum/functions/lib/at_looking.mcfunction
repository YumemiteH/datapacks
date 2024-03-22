#> yum:at_looking

#! 在看向的位置执行命令

#! @By
#! *

#! @Params $(with)
#! $(at_front) Boolean : 是否在检测到的前方的位置
#! $(run)* String<Commnad> : 在看向的位置执行的命令

#! @Data
#! storage yum:lib at_looking
#! .at_front = $(at_front)
#! .run = $(run)

#! @Score
#! ====================================================================================================
$data modify storage yum:lib at_looking set value $(with)
data modify storage yum:lib at_looking merge value {at_front:false}

function yum:lib/private/at_looking/get_player_looking_at with entity @s
execute at @s anchored eyes run function yum:lib/private/at_looking/run_command_at_looking_pos with storage yum:lib at_looking