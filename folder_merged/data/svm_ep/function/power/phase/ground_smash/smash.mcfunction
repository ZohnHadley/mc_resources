tag @s add executor
execute at @s as @e[dx=7,tag=!executor,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[distance=..4,tag=!executor,type=!#svm_ep:technical] run tag @s add hitby

effect clear @s minecraft:weakness
execute at @s as @e[distance=..30,tag=hitby,tag=!executor] at @s run function svm_ep:damage/deal_normal {"damage":"3","attacker":"@e[limit=1,tag=executor]","type":"no_cooldown"}
tag @e[distance=..30] remove hitby

execute at @s as @e[distance=..4,tag=!executor,type=!#svm_ep:technical] at @s run tp @s ~ ~0.085 ~
execute at @s as @e[distance=..3,tag=!executor,type=!#svm_ep:technical] at @s run tp @s ~ ~0.035 ~
execute at @s as @e[distance=..2,tag=!executor,type=!#svm_ep:technical] at @s run tp @s ~ ~0.035 ~

scoreboard players add @a[distance=..9] svm_ep.shaking 12
scoreboard players add @a[distance=..6] svm_ep.shaking 6
scoreboard players add @a[distance=..3] svm_ep.shaking 6


scoreboard players reset @s svm_ep.using_move
effect clear @s minecraft:slowness

playsound minecraft:entity.generic.explode ambient @a ~ ~1 ~ 2.5 1.3
playsound minecraft:entity.player.attack.knockback ambient @a ~ ~1 ~ 5.5 0
particle minecraft:cloud ~ ~0.2 ~ 0 0 0 0.85 650
particle minecraft:cloud ~ ~0.2 ~ 0 0 0 1.4 650
tag @s remove executor
