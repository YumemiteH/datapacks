#> yum:reminder

#! 游戏时间达到30min时, 提醒玩家休息

#! @By
#! #LOAD schedule 1800s

#! @Params
#! 

#! @Data
#! 

#! @Score
#! 
#! ====================================================================================================
# 消息提醒
tellraw @a [{"text": "[@Reminder] ", "bold": true, "color": "yellow"}, {"text": "休息一下吧", "color": "red"}]

# 声音提醒
execute as @a at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0 1