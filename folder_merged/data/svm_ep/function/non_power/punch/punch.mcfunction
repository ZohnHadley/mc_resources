tag @s add executor

execute at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:non_power/punch/raycast
execute at @s run playsound minecraft:entity.player.attack.weak hostile @a ~ ~ ~ 2 0.8
execute at @s run playsound minecraft:entity.player.attack.weak hostile @a ~ ~ ~ 2 0.8

execute at @s anchored eyes positioned ^ ^ ^1.5 run function svm_ep:particle/impact/spawn

scoreboard players reset @s svm_ep.using_move
effect clear @s slowness
#as @e[dx=0,tag=!executor,type=!#svm_ep:technical]
tag @s remove executor
tag @s remove end_raycast