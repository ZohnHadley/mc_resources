execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute if score @s[type=!#svm_ep:technical] svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
execute as @s[tag=svm_ep.gravity_field_block] run return run execute at @s run tp @s ^ ^ ^1.2 facing entity @n[tag=svm_ep.gravity_field]

tag @s add repel
scoreboard players add @n[tag=executor] svm_ep.mana_drain 4
execute at @s summon marker run function svm_ep:power/gravity/field/tp
tag @s remove repel
