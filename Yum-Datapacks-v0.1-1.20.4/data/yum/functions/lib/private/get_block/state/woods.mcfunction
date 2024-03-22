$execute if block ~ ~ ~ #yum:woods[axis=x] run return run data modify storage yum:value block set value "$(block)axis=x,"
$execute if block ~ ~ ~ #yum:woods[axis=y] run return run data modify storage yum:value block set value "$(block)axis=y,"
$execute if block ~ ~ ~ #yum:woods[axis=z] run return run data modify storage yum:value block set value "$(block)axis=z,"