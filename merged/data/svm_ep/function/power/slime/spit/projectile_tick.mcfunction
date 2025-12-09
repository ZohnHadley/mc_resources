
scoreboard players add @s svm_ep.lifetime 1
tag @s add executor

execute as @e[tag=svm_ep.slime_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run particle minecraft:item{item:slime_ball} ~ ~ ~ 0 0 0 0.06 3
execute at @s run tp @s ^ ^ ^0.75 ~ ~0.75
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hit
execute at @s[tag=!hit] run tp @s[tag=!svm_ep.slime_spit3] ^ ^ ^0.35 ~ ~0.15

execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=1..},tag=svm_ep.slime_spit3] ^ ^ ^0.25 ~ ~3.25
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=5..},tag=svm_ep.slime_spit3] ^ ^ ^ ~ ~6.25
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=12..},tag=svm_ep.slime_spit3] ^ ^ ^ ~ ~6.25

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hit

execute at @s[tag=hit] run function svm_ep:power/slime/spit/hit
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=50..}]