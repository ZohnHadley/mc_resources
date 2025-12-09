scoreboard players add @s svm_ep.effect 1
scoreboard players set @s svm_ep.e.flora_creaking_heart 10


execute at @s run particle minecraft:dust{color:[0.9f,0.45f,0.12f],scale:1} ~ ~1 ~ 0.4 0.7 0.4 0 2
execute at @s run particle minecraft:dust{color:[0.4f,0.4f,0.4f],scale:1.5f} ~ ~1 ~ 0.6 1 0.6 0 3


#execute at @n[tag=executor] if block ~ ~ ~ minecraft:creaking_heart run setblock ~ ~ ~ minecraft:creaking_heart[creaking_heart_state=awake]
item replace entity @n[tag=executor] container.0 with minecraft:creaking_heart[minecraft:item_model="svm_ep:block/flora_creaking_heart_active"]

execute unless entity @n[tag=executor,scores={svm_ep.numbers=-5199}] run return 0


scoreboard players set @s svm_ep.p.flora_ability_32_delay 5000
scoreboard players set @s svm_ep.p.copy_ability_09_delay 5000
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_09_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_09_delay += %WORLD svm_ep.tick

effect clear @s minecraft:resistance
damage @s 10 minecraft:true
execute at @s run playsound minecraft:entity.creaking.death master @a[distance=..50] ~ ~1 ~ 1 1