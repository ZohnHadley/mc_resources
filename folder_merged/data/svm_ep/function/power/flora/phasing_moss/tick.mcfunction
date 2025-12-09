ride @s mount @n[tag=executor]
data modify entity @n[tag=executor] Rotation set from entity @s Rotation
#execute if block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #svm_ep:phasing_moss_works_on run kill @n[tag=executor]
particle minecraft:item{item:moss_block} ~ ~0.4 ~ 0.4 0.4 0.4 0.15 15
particle minecraft:dust{color:[0.5f,0.7f,0.3f],scale:2f} ~ ~ ~ 0.85 0.85 0.85 0 5
particle minecraft:dust{color:[0.5f,0.7f,0.3f],scale:4f} ~ ~ ~ 2 2 2 0 35 force @s
effect give @s minecraft:blindness 1 0 true
gamemode spectator @s
#execute at @s anchored eyes positioned ^ ^ ^0.35 unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #svm_ep:phasing_moss_works_on as @n[tag=executor] run say no mo
#execute at @s anchored eyes positioned ^ ^ ^0.35 unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #svm_ep:phasing_moss_works_on as @n[tag=executor] run kill @s

execute at @s[scores={svm_ep.using_move=1..2044}] anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ #svm_ep:phasing_moss_works_on run kill @n[tag=executor]

execute at @s anchored eyes positioned ^ ^ ^0.15 if block ~ ~ ~ #svm_ep:phasing_moss_works_on as @n[tag=executor] at @s run tp @s ^ ^ ^0.15
execute at @s anchored eyes positioned ^ ^ ^0.25 if block ~ ~ ~ #svm_ep:no_physical_hitbox as @n[tag=executor] at @s run tp @s ^ ^ ^0.25
execute at @s anchored eyes positioned ^ ^ ^0.15 if block ~ ~ ~ #svm_ep:phasing_moss_works_on as @n[tag=executor] at @s run tp @s ^ ^ ^0.15
execute at @s anchored eyes positioned ^ ^ ^0.25 if block ~ ~ ~ #svm_ep:no_physical_hitbox as @n[tag=executor] at @s run tp @s ^ ^ ^0.25


execute unless entity @s[scores={svm_ep.using_move=1..}] run scoreboard players set @s svm_ep.using_move 2050
scoreboard players set @s[scores={svm_ep.using_move=..2020}] svm_ep.using_move 2020
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.p.flora_ability_30_delay 1
