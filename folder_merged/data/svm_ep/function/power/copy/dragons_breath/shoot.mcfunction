scoreboard players reset @s svm_ep.using_move

playsound minecraft:entity.ender_dragon.shoot master @a[distance=..50] ~ ~ ~ 1 1.05 0.2
effect clear @s slowness
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 summon item_display run function svm_ep:power/copy/dragons_breath/setup
tag @s remove executor

