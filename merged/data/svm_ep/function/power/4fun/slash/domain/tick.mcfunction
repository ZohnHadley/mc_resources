tag @s add executor4

particle minecraft:sweep_attack ~ ~ ~ 12 12 12 0 100
particle minecraft:crit ~ ~ ~ 12 12 12 1 400
particle minecraft:dust{color:[0.2f,0f,0f],scale:3f} ~ ~ ~ 12 12 12 0 20
particle minecraft:dust{color:[0.5f,0f,0f],scale:2f} ~ ~ ~ 12 12 12 0 15
particle minecraft:dust{color:[0.8f,0f,0f],scale:1f} ~ ~ ~ 12 12 12 0 10

playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 1 1.4
playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep master @a[distance=..45] ~ ~ ~ 1 0.4


execute as @e[distance=0.1..25,type=!#svm_ep:technical,limit=3,sort=random] at @s positioned ~ ~1 ~ run function smaras:fukuma/domain/auto
execute as @e[distance=0.1..10,type=!#svm_ep:technical,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run function smaras:fukuma/domain/auto

tag @s remove executor4


execute unless predicate svm_ep:holding_ability run scoreboard players reset @s[type=player] sm.ability_using