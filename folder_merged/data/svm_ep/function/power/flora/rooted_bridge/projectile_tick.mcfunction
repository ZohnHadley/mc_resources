tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute unless entity @s[scores={svm_ep.p.flora_rooted_bridge_direction=1..8}] store result score @s svm_ep.p.flora_rooted_bridge_direction run random value 1..4
execute as @s[scores={svm_ep.p.flora_rooted_bridge_direction=0}] run scoreboard players set @s svm_ep.p.flora_rooted_bridge_direction 1

execute as @s[scores={svm_ep.p.flora_rooted_bridge_direction=5..8}] run function svm_ep:power/flora/rooted_bridge/tick1
execute as @s[scores={svm_ep.p.flora_rooted_bridge_direction=1..4}] run function svm_ep:power/flora/rooted_bridge/tick0

function svm_ep:power/flora/rooted_bridge/move








tag @s remove had_direction
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=28..}]