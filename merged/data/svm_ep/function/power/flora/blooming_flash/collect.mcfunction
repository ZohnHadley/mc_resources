scoreboard players add @s svm_ep.p.flora_blooming_collect 1
execute at @s run playsound minecraft:block.end_portal_frame.fill master @a[distance=..30] ~ ~ ~ 2 1.6
kill @e[tag=executor]
effect give @s[scores={svm_ep.p.flora_blooming_collect=5}] minecraft:blindness 1 0 true
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..30] ~ ~ ~ 3 1.2
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s run playsound minecraft:entity.allay.death master @a[distance=..30] ~ ~ ~ 2 1.6
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s run playsound minecraft:entity.ender_dragon.growl master @a[distance=..30] ~ ~ ~ 1 1.3
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s run particle minecraft:snowflake ~ ~1 ~ 0 0 0 1.7 350
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s anchored eyes run function svm_ep:power/flora/blooming_flash/raycast
execute as @s[scores={svm_ep.p.flora_blooming_collect=5}] at @s run particle minecraft:snowflake ~ ~1 ~ 0 0 0 1.7 250
