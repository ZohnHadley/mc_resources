execute unless dimension svm_ep:paradise run tag @s add not_custom
scoreboard players set @s svm_ep.portal_delay 10

execute as @s[tag=!not_custom] in minecraft:overworld run tp @s ~ ~ ~
execute as @s[tag=!not_custom] in minecraft:overworld at @s run spreadplayers ~ ~ 6 10 false @s
execute as @s[tag=not_custom] in svm_ep:paradise run tp @s ~ ~ ~
execute as @s[tag=not_custom] in svm_ep:paradise at @s run spreadplayers ~ ~ 6 10 false @s

execute at @s run tp @s ~ ~6 ~
execute at @s positioned ~ ~2.4 ~ run function svm_ep:items/portal/spawn_2
execute at @s run playsound minecraft:block.portal.travel master @a[distance=..30] ~ ~ ~ 0.6 1.4
tag @s remove not_custom