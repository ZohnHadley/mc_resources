tag @s add executor
execute as @e[tag=svm_ep.harpie_user,distance=..100] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.26 1
execute at @s run tp @s ^ ^ ^0.75 ~ ~0.55
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hit
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=..50}] ^ ^ ^0.15 ~ ~
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=..70}] ^ ^ ^0.15 ~ ~
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=..90}] ^ ^ ^0.15 ~ ~
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=30..}] ^ ^ ^ ~ ~1.25
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=40..}] ^ ^ ^ ~ ~1.25
execute at @s[tag=!hit] run tp @s[scores={svm_ep.lifetime=50..}] ^ ^ ^ ~ ~1.25

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
execute at @s if entity @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run tag @s add hit

execute as @s[tag=hit] run function svm_ep:power/harpie/razor/hit
tag @s remove executor
tag @e remove same_id