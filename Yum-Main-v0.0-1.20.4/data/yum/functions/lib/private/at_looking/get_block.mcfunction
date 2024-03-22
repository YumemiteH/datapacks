$data modify storage yum:entity player[{uuid:$(UUID)}].looking_at set from storage yum:lib at_looking
$function yum:lib/get_block {with:{store:'storage yum:entity player[{uuid:$(UUID)}].looking_at.block', type:string, only_id:false}}
