scoreboard players remove @s svm_ep.npc.adapter.dash_cooldown 1

execute as @s[scores={svm_ep.npc.adapter.dash_cooldown=1..}] run return 0



execute on target run tag @s add target

execute unless entity @e[tag=target,distance=..50] run return 0
particle minecraft:gust_emitter_small
scoreboard players set @s svm_ep.npc.adapter.dash_cooldown 150
scoreboard players operation @s svm_ep.npc.adapter.dash_cooldown -= @s svm_ep.npc.adapter.adaptation.distance.lvl
scoreboard players operation @s svm_ep.npc.adapter.dash_cooldown -= @s svm_ep.npc.adapter.adaptation.distance.lvl
scoreboard players operation @s svm_ep.npc.adapter.dash_cooldown -= @s svm_ep.npc.adapter.adaptation.distance.lvl
scoreboard players operation @s svm_ep.npc.adapter.dash_cooldown -= @s svm_ep.npc.adapter.adaptation.distance.lvl
scoreboard players operation @s svm_ep.npc.adapter.dash_cooldown -= @s svm_ep.npc.adapter.adaptation.distance.lvl
scoreboard players set @s[scores={svm_ep.npc.adapter.dash_cooldown=..10}] svm_ep.npc.adapter.dash_cooldown 10

playsound minecraft:entity.breeze.jump master @a[distance=..25] ~ ~ ~ 1 0 0.2
tp @s ~ ~ ~ facing entity @n[tag=target]

execute store result score @s pos.x run data get entity @s Pos[0] 100
execute store result score @s pos.y run data get entity @s Pos[1] 100
execute store result score @s pos.z run data get entity @s Pos[2] 100

tp @s @n[tag=target]
execute store result score @s pos.x2 run data get entity @s Pos[0] 100
execute store result score @s pos.y2 run data get entity @s Pos[1] 100
execute store result score @s pos.z2 run data get entity @s Pos[2] 100
scoreboard players add @s pos.y2 4
tp @s ~ ~ ~
execute store result entity @s Motion[0] double 0.002 run scoreboard players operation @s pos.x2 -= @s pos.x
execute store result entity @s Motion[1] double 0.002 run scoreboard players operation @s pos.y2 -= @s pos.y
execute store result entity @s Motion[2] double 0.002 run scoreboard players operation @s pos.z2 -= @s pos.z
scoreboard players reset @s pos.x
scoreboard players reset @s pos.y
scoreboard players reset @s pos.z