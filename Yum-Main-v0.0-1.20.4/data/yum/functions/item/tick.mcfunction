# 每刻激活 tick 触发器
function yum:item/action {trigger:tick}

# 检测玩家使用道具
function yum:item/is_used_in_mainhand with storage yum:main item.player
function yum:item/is_used_in_offhand with storage yum:main item.player

# 记录玩家选择的物品
$data remove storage yum:entity player[{uuid:$(UUID)}].mainhand_item
$data remove storage yum:entity player[{uuid:$(UUID)}].offhand_item
$data modify storage yum:entity player[{uuid:$(UUID)}].mainhand_item set from entity @s SelectedItem
$data modify storage yum:entity player[{uuid:$(UUID)}].offhand_item set from entity @s Inventory[{Slot:-106b}]

# 创建检测玩家手持物品使用的记分板 以检测玩家使用道具
data remove storage yum:main item.player
data modify storage yum:main item.player.mainhand_item set string entity @s SelectedItem.id 10
data modify storage yum:main item.player.offhand_item set string entity @s Inventory[{Slot:-106b}].id 10

function yum:item/creat_item_use_listener_from_mainhand with storage yum:main item.player
function yum:item/creat_item_use_listener_from_offhand with storage yum:main item.player