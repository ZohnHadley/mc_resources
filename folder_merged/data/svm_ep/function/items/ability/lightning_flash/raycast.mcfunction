scoreboard players remove @s svm_ep.lightning_flash_length 1
execute unless block ^ ^ ^0.55 #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.lightning_flash_length
execute as @e[type=!#svm_ep:technical,tag=!executor,distance=..5] run damage @s 8 minecraft:lightning_bolt by @n[tag=executor]


particle minecraft:glow_squid_ink ~ ~0.7 ~ 0.7 0.7 0.7 2 10
particle minecraft:dust{color:[0.9f,18000000f,18000000f],scale:2.7f} ~ ~ ~ 0.9 0.9 0.9 0 20
particle minecraft:dust{color:[18000000f,0.89f,0.18f],scale:2f} ~ ~ ~ 1.2 1.2 1.2 0 12

particle glow ~ ~ ~ 2 2 2 0.3 5
particle end_rod ~ ~ ~ 1 1 1 0.3 6
particle end_rod ~ ~ ~ 1 1 1 1.5 7


execute unless entity @s[scores={svm_ep.lightning_flash_length=1..}] run tp @s ~ ~-0.5 ~
execute unless entity @s[scores={svm_ep.lightning_flash_length=1..}] at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox positioned ~ ~1 ~ align y run tp @s ~ ~ ~
execute as @s[scores={svm_ep.lightning_flash_length=1..}] positioned ^ ^ ^0.55 run function svm_ep:items/ability/lightning_flash/raycast