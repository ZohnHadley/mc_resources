tag @s add executor4

particle minecraft:sweep_attack ~ ~ ~ 12 12 12 0 100
particle minecraft:crit ~ ~ ~ 12 12 12 1 400
particle minecraft:dust{color:[0.2f,0f,0f],scale:3f} ~ ~ ~ 12 12 12 0 20
particle minecraft:dust{color:[0.5f,0f,0f],scale:2f} ~ ~ ~ 12 12 12 0 15
particle minecraft:dust{color:[0.8f,0f,0f],scale:1f} ~ ~ ~ 12 12 12 0 10

playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 0.6 1.4
playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 0.6 2
playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 0.6 0.4


execute as @e[distance=0.1..50,type=!#svm_ep:technical,limit=5,sort=random] at @s positioned ~ ~1 ~ run function svm_ep:power/4fun/domain/auto
execute as @e[distance=0.1..25,type=!#svm_ep:technical,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run function svm_ep:power/4fun/domain/auto

tag @s remove executor4

scoreboard players add @s svm_ep.p.4fun_ability_01_delay 1
scoreboard players remove @s[type=!player] svm_ep.using_move 5
execute unless predicate svm_ep:holding_ability run scoreboard players remove @s[type=player] svm_ep.using_move 15