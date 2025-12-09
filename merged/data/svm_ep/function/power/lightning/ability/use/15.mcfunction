scoreboard players set @s svm_ep.using_move 1200
scoreboard players set @s svm_ep.used_move 1200
scoreboard players set @s svm_ep.p.lightning_ability_15_delay 1360
scoreboard players remove @s svm_ep.mana 250

execute at @s run playsound minecraft:entity.ender_eye.death hostile @a[distance=..50] ~ ~1 ~ 2 0
