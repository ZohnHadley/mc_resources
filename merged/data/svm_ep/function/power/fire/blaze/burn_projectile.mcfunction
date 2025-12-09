execute at @s run function svm_ep:power/fire/blaze/particle
scoreboard players remove @s svm_ep.projectile 5


execute at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 0.2 0.1
execute at @s[scores={svm_ep.projectile=..0}] positioned ^ ^ ^3 run particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0.15 40
execute at @s[scores={svm_ep.projectile=..0}] positioned ^ ^ ^3 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0.25 0.25 0.45 8
execute at @s[scores={svm_ep.projectile=..0}] positioned ^ ^ ^3 run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.45 8
execute at @s[scores={svm_ep.projectile=..0}] positioned ^ ^ ^3 run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.3 0.5

kill @s[scores={svm_ep.projectile=..0},type=!player]
scoreboard players reset @s[type=player] svm_ep.projectile