tag @s add executor 
execute on vehicle run tag @s add controller
execute unless entity @e[tag=controller] run function svm_ep:npc/die
data modify entity @s Rotation[0] set from entity @n[tag=controller] Rotation[0]
tag @e remove controller
tag @s remove executor