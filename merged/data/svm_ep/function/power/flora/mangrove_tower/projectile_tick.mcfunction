scoreboard players add @s svm_ep.lifetime 1
scoreboard players add @a[distance=..15] svm_ep.shaking 1
execute as @s[scores={svm_ep.lifetime=..0}] run playsound minecraft:block.rooted_dirt.step master @a[distance=..25] ~ ~ ~ 0.6 0

execute as @s[scores={svm_ep.lifetime=1..}] at @s run function svm_ep:power/flora/mangrove_tower/projectile_tick_after_windup