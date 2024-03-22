# 将读取到的字符拼接
$data modify storage yum:data lib.get_playername.name set value $(name)$(char)

# 读取下一个字符
function yum:lib/private/get_player_name/get_a_char_in_the_string