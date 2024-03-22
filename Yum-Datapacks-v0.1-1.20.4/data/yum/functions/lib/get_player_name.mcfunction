# 非玩家调用
execute unless entity @s[type=player] run return fail

# 生成含有玩家姓名的字符串的文本展示实体
tag @s add yum.lib.get_playername.player
summon minecraft:text_display ~ ~ ~ {text:'{"selector":"@p[tag=yum.lib.get_playername.player]"}', Tags:["yum.lib.get_playername"], background:0, text_opacity:4}
tag @s remove yum.lib.get_playername.player

# 获取含有玩家姓名的字符串
data modify storage yum:data lib.get_playername.string set string entity @e[limit=1, tag=yum.lib.get_playername] text 24

# 清除用于获取含有玩家姓名的字符串的展示实体
kill @e[tag=yum.lib.get_playername]

# 拆分字符串 获取玩家姓名
data modify storage yum:data lib.get_playername.name set value ""
function yum:lib/private/get_player_name/get_a_char_in_the_string

# 改变数据存储的位置, 使其更易读
data modify storage yum:data lib.playername set from storage yum:data lib.get_playername.name