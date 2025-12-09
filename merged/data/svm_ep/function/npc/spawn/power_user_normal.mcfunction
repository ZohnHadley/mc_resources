scoreboard players set @s svm_ep.npc 1
scoreboard players set @s svm_ep.npc_strength 2
tag @s add svm_ep.npc
function svm_ep:power/roll
attribute @s minecraft:max_health base set 30
data merge entity @s {Health:30}