# 每次获取一个字符
data modify storage yum:data lib.get_playername.char set string storage yum:data lib.get_playername.string 0 1
data modify storage yum:data lib.get_playername.string set string storage yum:data lib.get_playername.string 1

# 继续读取 直到遇到 '"'，说明玩家姓名读取结束
execute unless data storage yum:data lib.get_playername{char:'"'} run function yum:lib/private/get_player_name/append_chars_to_name with storage yum:data lib.get_playername