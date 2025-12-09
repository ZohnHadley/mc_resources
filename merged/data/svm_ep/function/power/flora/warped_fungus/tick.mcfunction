tag @s add executor
execute at @s[scores={svm_ep.using_move=..1990}] if block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~-1 ~ #svm_ep:no_physical_hitbox rotated 0 0 summon block_display run function svm_ep:power/flora/warped_fungus/setup
execute at @s[scores={svm_ep.using_move=..1990}] if block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~-1 ~ #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s[scores={svm_ep.using_move=..1980}] svm_ep.using_move 1
tag @s remove executor
particle minecraft:dust{color:[0f,1f,0.8f],scale:1.5f} ~ ~0.1 ~ 1 0.1 1 0 3