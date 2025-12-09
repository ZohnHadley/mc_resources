tag @s add executor
scoreboard players add @s svm_ep.lifetime 1

execute as @e[distance=..100,scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id

execute at @s[tag=!hit] run function svm_ep:entity/projectile/1/move
execute at @s[tag=!hit] run function svm_ep:entity/projectile/1/move
execute at @s[tag=!hit] run function svm_ep:entity/projectile/1/move
execute as @s[tag=hit] at @s run function svm_ep:entity/projectile/1/hit
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=240..}]