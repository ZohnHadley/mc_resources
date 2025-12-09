tp @s ~ ~ ~ ~22.5 ~-0.75
execute at @s if block ~ ~ ~ #minecraft:fire run scoreboard players set @s svm_ep.p.fire_on_fire 10
execute at @s if block ~ ~-0.6 ~ #minecraft:sand run scoreboard players set @s svm_ep.numbers 10

execute as @s[scores={svm_ep.p.fire_on_fire=1..}] run particle minecraft:flame ~ ~1.5 ~ 0.5 0.5 0.5 0.4 10
execute as @s[scores={svm_ep.p.fire_on_fire=1..}] run particle minecraft:smoke ~ ~1.5 ~ 0.5 0.5 0.5 0.4 10
execute as @s[scores={svm_ep.numbers=10}] run particle minecraft:falling_dust{block_state:sand} ~ ~1.5 ~ 0.71 0.71 0.71 0.21 6
execute at @s positioned ~ ~0.5 ~ positioned ^ ^ ^0.25 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~0.65 ~ positioned ^0.25 ^ ^ run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~0.8 ~ positioned ^-0.66 ^ ^0.66 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~1 ~ positioned ^1 ^ ^1 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~1.2 ~ positioned ^0.66 ^ ^-1 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~1.5 ~ positioned ^-1 ^ ^0.66 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~1.75 ~ positioned ^-1 ^ ^0.66 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~1.9 ~ positioned ^-1.2 ^ ^1 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~2 ~ positioned ^1 ^ ^-1.2 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~2.2 ~ positioned ^-1.8 ^ ^1.2 run function svm_ep:items/tengu/tornado/particle
execute at @s positioned ~ ~2.45 ~ positioned ^-2.3 ^ ^-1.2 run function svm_ep:items/tengu/tornado/particle
