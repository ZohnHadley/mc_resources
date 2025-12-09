
playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 2 1
execute at @e[distance=0.1..5] run particle minecraft:item{item:feather} ~ ~1 ~ 0.5 1 0.5 0.2 50
particle minecraft:item{item:feather} ~ ~1 ~ 0 0 0 1.2 50
playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 0

scoreboard players remove @s svm_ep.mana 60
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.p.harpie_ability_05_delay 320
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:gust
execute at @s anchored eyes positioned ^ ^ ^1 as @n[type=!#svm_ep:technical,distance=..4,tag=!executor] run function svm_ep:power/harpie/grab/grab

tag @s remove executor