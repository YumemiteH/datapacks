function yum:private/get_block/state/stairs with storage yum:value

execute if block ~ ~ ~ #yum:irregular/stairs/wooden_stairs run return run function yum:private/get_block/irregular/stairs/wooden_stairs with storage yum:value
execute if block ~ ~ ~ #yum:irregular/stairs/stone_stairs run return run function yum:private/get_block/irregular/stairs/stone_stairs with storage yum:value