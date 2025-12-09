#REVERT
scoreboard players remove @s svm_ep.mana 40
scoreboard players add @s svm_ep.used_move 80
scoreboard players set @s svm_ep.p.gravity_ability_06_delay 200
scoreboard players set @s[type=!player] svm_ep.p.gravity_ability_06_delay 240

scoreboard players set @s svm_ep.p.gravity_revert 1
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..25] ~ ~ ~ 1.5 1.5
execute at @s run particle minecraft:portal ~ ~1 ~ 1 1 1 0.3 40