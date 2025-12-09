function svm_ep:power/fire/ray/particle
execute positioned ^ ^ ^0.25 run function svm_ep:power/fire/ray/particle
execute positioned ^ ^ ^0.50 run function svm_ep:power/fire/ray/particle


execute if predicate svm_ep:chance/50_percent positioned ^0.48 ^ ^ run function svm_ep:power/fire/burn_block
execute if predicate svm_ep:chance/50_percent positioned ^-0.48 ^ ^ run function svm_ep:power/fire/burn_block
execute if predicate svm_ep:chance/50_percent positioned ^ ^0.48 ^ run function svm_ep:power/fire/burn_block
execute if predicate svm_ep:chance/50_percent positioned ^ ^-0.48 ^ run function svm_ep:power/fire/burn_block

execute positioned ^ ^ ^1.32 run function svm_ep:power/fire/burn_block
execute positioned ^ ^ ^0.38 run function svm_ep:power/fire/burn_block
execute if entity @e[tag=!executor,type=!#svm_ep:technical,dx=0] run tag @s add end_raycast
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast


execute as @e[tag=!executor ,type=!#svm_ep:technical,dx=0] run damage @s 0.5 minecraft:no_cooldown by @n[tag=executor,limit=1]
execute as @e[tag=!executor,type=!#svm_ep:technical,dx=0] run damage @s 0.75 minecraft:no_cooldown by @n[tag=executor,scores={svm_ep.p.fire_arms=1..}]

execute as @s[tag=end_raycast] run place feature svm_ep:fire_small
execute positioned ^ ^ ^0.75 if entity @s[distance=..30] as @s[tag=!end_raycast] run function svm_ep:power/fire/ray/raycast