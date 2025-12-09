execute on target run tag @s add target

execute at @s anchored feet run tp @s ^ ^ ^1.7 facing entity @e[tag=target,limit=1] eyes
execute at @s if entity @e[tag=target,distance=..5] run scoreboard players reset @s svm_ep.using_move
execute at @s run playsound minecraft:block.rooted_dirt.break block @a[distance=..30] ~ ~ ~ 2 0

execute on target run tag @s remove target