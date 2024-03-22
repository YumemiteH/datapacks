#> yum:item/trigger/use

#! 使用胡萝卜钓竿

#! @By
#! yum:tick as @a[scores= {yum.item.carrot_on_a_stick= 1..}]

#! @Params
#! 

#! @Data
#! 

#! @Score
#! yum.item.use_carrot_on_a_stick @s
#! ====================================================================================================
$function yum:item/action_use with storage yum:entity player[{uuid:$(UUID)}].offhand_item.tag.yum.action
