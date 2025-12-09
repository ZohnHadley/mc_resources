scoreboard players remove @s svm_ep.lightning_flash_length 1
execute unless block ^ ^ ^0.55 #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.lightning_flash_length


particle minecraft:portal ~ ~1 ~ 0 0 0 1 11

execute unless entity @s[scores={svm_ep.lightning_flash_length=1..}] run function svm_ep:power/time/skip/tp
execute as @s[scores={svm_ep.lightning_flash_length=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/time/skip/raycast
