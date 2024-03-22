# execute if entity @s[dx=0, dy=0, dz=0] run return fail
scoreboard players reset .lib.at_ray.distance yum

# 如果参数 front 为 true, 获取前方的位置
$execute if data storage yum:lib at_ray{at_front:true} positioned ^ ^ ^-0.02 run return run $(run)
# 否则获取当前的位置
$$(run)