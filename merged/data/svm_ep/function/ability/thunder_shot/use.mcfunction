tag @s add executor
execute anchored eyes positioned ^ ^ ^1.4 positioned ~ ~ ~ run function svm_ep:items/ability/thunder_shot/raycast
scoreboard players reset @s svm_ep.thunder_shot_length
tag @s remove end_raycast
tag @s remove executor

execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 0.4 0.6
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 0.5 1.6

scoreboard players add @s svm_ep.used_move 80
