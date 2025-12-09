$data remove storage svm_ep:ability ability.$(id_number)
$data remove storage svm_ep:ability ability.$(id)


#DEFAULT VALUES
$data modify storage svm_ep:ability ability.$(id).use_requirement set value "Requires x mana"
$data modify storage svm_ep:ability ability.$(id).unlock_id set value "20076"
$data modify storage svm_ep:ability ability.$(id).unlock_requirement set value "Not defined"

$data modify storage svm_ep:ability ability.$(id) set value $(data)
# $data remove storage svm_ep:ability ability.$(id).display
# $data remove storage svm_ep:ability ability.$(id).display_cooldown

$data modify storage svm_ep:ability ability.$(id).id set value $(id)

$execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run data modify storage svm_ep:ability ability.$(id).id_number set value $(id_number)
$execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run data modify storage svm_ep:ability id.$(id_number).id set value $(id)
$execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run data modify storage svm_ep:ability id.$(id_number).id_number set value $(id_number)
$execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run data modify storage svm_ep:ability id.$(id_number).using set value "function svm_ep:ability/$(id)/using"
$execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run scoreboard players set $(id) svm_ep.ability.id $(id_number)


$execute unless data storage svm_ep:ability ability.$(id).use_requirement run data modify storage svm_ep:ability ability.$(id).use_requirement set value "Requires x mana"
$execute unless data storage svm_ep:ability ability.$(id).unlock_id run data modify storage svm_ep:ability ability.$(id).unlock_id set value "20076"
$execute unless data storage svm_ep:ability ability.$(id).unlock_requirement run data modify storage svm_ep:ability ability.$(id).unlock_requirement set value "Not defined"
$execute unless data storage svm_ep:ability ability.$(id).max_cooldown store result storage svm_ep:ability ability.$(id).max_cooldown int 2 run data get storage svm_ep:ability ability.$(id).cooldown