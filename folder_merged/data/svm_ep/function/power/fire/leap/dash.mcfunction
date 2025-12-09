scoreboard players remove @s[tag=svm_ep.fire_had_jumped] svm_ep.mana 5
tag @s add svm_ep.fire_had_jumped

#EFFECT
execute at @s[scores={svm_ep.using_move=..725}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
execute at @s[scores={svm_ep.using_move=..750}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5
execute at @s[scores={svm_ep.using_move=..775}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2
execute at @s run particle minecraft:large_smoke ~ ~0.8 ~ 0.5 0.5 0.5 1.35 10
execute at @s run scoreboard players add @a[distance=..8] svm_ep.shaking 3
execute at @s[scores={svm_ep.using_move=..751}] run scoreboard players add @a[distance=..8] svm_ep.shaking 2
execute at @s[scores={svm_ep.using_move=..701}] run scoreboard players add @a[distance=..8] svm_ep.shaking 3
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 2


particle minecraft:flame ~ ~ ~ 0 0 0 0.9 30
particle minecraft:flame ~ ~ ~ 0 0 0 0.6 20
particle minecraft:flame ~ ~ ~ 0 0 0 0.3 10
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 5

particle minecraft:dust{color:[18000000f,0.75f,0.2f],scale:2f} ~ ~ ~ 1 0.1 1 0 10
particle minecraft:dust{color:[18000000f,0.5f,0.2f],scale:2f} ~ ~ ~ 2 0.1 2 0 10
particle minecraft:dust{color:[18000000f,0.25f,0.2f],scale:2f} ~ ~ ~ 3 0.1 3 0 10

#MATH
scoreboard players set $strength player_motion.api.launch 350
scoreboard players remove @s svm_ep.using_move 700
scoreboard players operation @s svm_ep.using_move *= %-2 svm_ep.numbers
scoreboard players add @s svm_ep.using_move 200

scoreboard players operation $strength player_motion.api.launch *= @s svm_ep.using_move
scoreboard players add $strength player_motion.api.launch 5000

#DASH
function player_motion:api/launch_looking



scoreboard players set @s svm_ep.using_move 800