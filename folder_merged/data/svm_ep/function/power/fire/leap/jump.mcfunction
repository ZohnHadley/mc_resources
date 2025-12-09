scoreboard players remove @s[tag=svm_ep.fire_had_jumped] svm_ep.mana 5
tag @s add svm_ep.fire_had_jumped
execute unless entity @s[scores={svm_ep.using_move=1..}] run return 0
scoreboard players set @s svm_ep.clear_levitation 5
effect give @s minecraft:levitation 1 25 true
scoreboard players add @s[scores={svm_ep.using_move=..796}] svm_ep.clear_levitation 1
scoreboard players add @s[scores={svm_ep.using_move=..792}] svm_ep.clear_levitation 2
scoreboard players add @s[scores={svm_ep.using_move=..786}] svm_ep.clear_levitation 1
scoreboard players add @s[scores={svm_ep.using_move=..780}] svm_ep.clear_levitation 2
scoreboard players add @s[scores={svm_ep.using_move=..760}] svm_ep.clear_levitation 1
scoreboard players add @s[scores={svm_ep.using_move=..740}] svm_ep.clear_levitation 2
scoreboard players add @s[scores={svm_ep.using_move=..720}] svm_ep.clear_levitation 1
scoreboard players add @s[scores={svm_ep.using_move=..701}] svm_ep.clear_levitation 8

scoreboard players operation @s[scores={svm_ep.p.fire_arms=1..}] svm_ep.clear_levitation *= %fire_leap_with_fire_arms_multiplicator svm_ep.world_settings


execute at @s run function svm_ep:system/poof

execute at @s[scores={svm_ep.using_move=..725}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
execute at @s[scores={svm_ep.using_move=..750}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5
execute at @s[scores={svm_ep.using_move=..775}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2

particle minecraft:flame ~ ~ ~ 0 0 0 0.9 30
particle minecraft:flame ~ ~ ~ 0 0 0 0.6 20
particle minecraft:flame ~ ~ ~ 0 0 0 0.3 10
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 5

particle minecraft:dust{color:[18000000f,0.75f,0.2f],scale:2f} ~ ~ ~ 1 0.1 1 0 10
particle minecraft:dust{color:[18000000f,0.5f,0.2f],scale:2f} ~ ~ ~ 2 0.1 2 0 10
particle minecraft:dust{color:[18000000f,0.25f,0.2f],scale:2f} ~ ~ ~ 3 0.1 3 0 10


execute at @s run scoreboard players add @a[distance=..8] svm_ep.shaking 5
execute at @s[scores={svm_ep.using_move=..751}] run scoreboard players add @a[distance=..8] svm_ep.shaking 3
execute at @s[scores={svm_ep.using_move=..701}] run scoreboard players add @a[distance=..8] svm_ep.shaking 4
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 2

scoreboard players add @s svm_ep.using_move 15
scoreboard players set @s[scores={svm_ep.using_move=800..}] svm_ep.using_move 800
