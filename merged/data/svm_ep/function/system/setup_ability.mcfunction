
data remove storage svm_ep:ability temp

$data modify storage svm_ep:ability temp.data set value $(data)
$data modify storage svm_ep:ability temp.id set value $(id)



$scoreboard objectives remove svm_ep.ability.cooldown.$(id)
$scoreboard objectives add svm_ep.ability.cooldown.$(id) dummy

execute store result storage svm_ep:ability temp.id_number int 1 run scoreboard players get %total_ids svm_ep.ability.id

execute unless data storage svm_ep:ability {temp:{data:{only_item_ability:true}}} run scoreboard players add %total_ids svm_ep.ability.id 1
function svm_ep:system/setup_ability2 with storage svm_ep:ability temp