summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
place feature svm_ep:fire_small

scoreboard players add @a[distance=..5] svm_ep.shaking 3
scoreboard players add @a[distance=..2.5] svm_ep.shaking 2
scoreboard players add @a[distance=..1] svm_ep.shaking 2

particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 30 force @a[distance=..80]
particle minecraft:flame ~ ~ ~ 0 0 0 0.15 35 force @a[distance=..80]
particle minecraft:flame ~ ~ ~ 0 0 0 2 50 force @a[distance=..80]

execute at @s run particle dust{color:[1f,0f,0f],scale:0.5f} ~ ~ ~ 2 2 2 0 15 force @a[distance=..80]
execute at @s run particle dust{color:[1f,0.1f,0f],scale:0.7f} ~ ~ ~ 1 1 1 0 10 force @a[distance=..80]
execute at @s run particle dust{color:[18000000f,0.25f,0f],scale:1.25f} ~ ~ ~ 0.85 0.85 0.85 0 7 force @a[distance=..80]
execute at @s run particle dust{color:[18000000f,0.95f,0f],scale:2f} ~ ~ ~ 0.35 0.35 0.35 0 5 force @a[distance=..80]

playsound minecraft:entity.blaze.shoot master @a[distance=..50] ~ ~ ~ 0.75 0.75 0.1
playsound minecraft:entity.blaze.hurt master @a[distance=..50] ~ ~ ~ 0.75 1.25 0.1

execute as @e[tag=hit_by] run function svm_ep:damage/deal_normal {"damage":"5","attacker":"@n[tag=executor]","type":"'svm_ep:no_cooldown_projectile'"}
tag @e remove hit_by
kill @s