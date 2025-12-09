execute at @s if block ~ ~-0.5 ~ minecraft:moss_block run tag @s add use



effect give @s[tag=use] minecraft:slowness 1 4 true
execute at @s[tag=use] run tp @s ~ ~-0.45 ~
execute as @s[tag=use] run scoreboard players set @n[tag=executor] svm_ep.p.flora_ability_30_delay 40


tag @s remove use

