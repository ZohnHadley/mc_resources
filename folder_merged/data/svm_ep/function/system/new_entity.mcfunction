execute unless score @s svm_ep.entity_id matches 1.. run scoreboard players add %total_ids svm_ep.entity_id 1
execute unless score @s svm_ep.entity_id matches 1.. run scoreboard players operation @s svm_ep.entity_id = %total_ids svm_ep.entity_id
#tag @s add svm_ep.has_entity_id

execute as @s[type=player] run function svm_ep:player/setup