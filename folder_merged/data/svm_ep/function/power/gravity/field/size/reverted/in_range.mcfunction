execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute if score @s[type=!#svm_ep:technical] svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
tag @s add repel
scoreboard players add @n[tag=executor] svm_ep.mana_drain 4
execute at @s summon marker run function svm_ep:power/gravity/field/size/reverted/tp
tag @s remove repel
