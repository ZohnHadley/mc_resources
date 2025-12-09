tag @s add executor
execute at @s positioned ~ ~-0.5 ~ summon minecraft:item_display run function svm_ep:items/ability/cherry_blessing/setup
tag @s remove executor
scoreboard players add @s svm_ep.used_move 50
effect give @s minecraft:slowness 1 1 true
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 30
execute at @s run playsound minecraft:block.amethyst_block.break master @a[distance=..20] ~ ~ ~ 2 1.9 0.2