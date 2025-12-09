execute unless entity @e[tag=svm_ep.razor_feather] run return run function svm_ep:system/message/macro {"message":"No Razor Feathers found"}

playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 2 1
execute at @e[distance=0.1..5] run particle minecraft:item{item:feather} ~ ~1 ~ 0.5 1 0.5 0.2 50
particle minecraft:item{item:feather} ~ ~1 ~ 0 0 0 1.2 20
playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 2

scoreboard players add @s svm_ep.used_move 30
scoreboard players set @s svm_ep.using_move 150
scoreboard players set @s svm_ep.p.harpie_ability_06_delay 2
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:gust

tag @s remove executor