execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] at @s anchored eyes positioned ^ ^-0.5 ^0.75 run return run function svm_ep:power/death/cleaving_cut/unsealed

scoreboard players operation %damage svm_ep.numbers = @s svm_ep.using_move
scoreboard players operation %damage svm_ep.numbers -= %200 svm_ep.numbers
scoreboard players operation %damage svm_ep.numbers -= %15 svm_ep.numbers

scoreboard players operation %damage svm_ep.numbers /= %-3 svm_ep.numbers


tag @s add executor
tag @e[distance=..2.5,type=!#svm_ep:technical,tag=!executor] add hitby
tag @e[dx=0,type=!#svm_ep:technical,tag=!executor] add hitby

execute as @e[tag=hitby] at @s run function svm_ep:power/death/cleaving_cut/hitby
tag @s remove executor


scoreboard players reset @s svm_ep.using_move
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 3
particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 1 30
playsound minecraft:entity.wither_skeleton.hurt master @a[distance=..25] ~ ~1 ~ 0.3 0
