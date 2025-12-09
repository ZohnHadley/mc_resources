scoreboard players set @s svm_ep.clear_levitation 11
effect give @s minecraft:levitation 1 22 true

execute at @s run function svm_ep:system/poof

execute at @s run scoreboard players add @a[distance=..8] svm_ep.shaking 5
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 2

scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 30
scoreboard players set @s svm_ep.p.harpie_ability_03_delay 20