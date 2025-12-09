summon marker ~ ~ ~ {Tags:["svm_ep.crack","svm_ep.crack_7"]}

execute as @e[tag=!same_id,distance=..36.5,type=!#svm_ep:technical] run function svm_ep:power/fire/arrow/hitby
execute as @e[tag=!same_id,tag=!hit_by,dx=0,type=!#svm_ep:technical] run function svm_ep:power/fire/arrow/hitby


place feature svm_ep:fire
execute unless score doBlocksDestroy svm_ep.gamerule matches 0 run summon fireball ~ ~ ~ {Motion:[0d,-10d,0d],ExplosionPower:10,Invulnerable:1b,NoAI:1b,Silent:1b,attributes:[{id:"scale",base:0f}]}
execute unless score doBlocksDestroy svm_ep.gamerule matches 0 if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ minecraft:orange_stained_glass
effect give @a[distance=..50] minecraft:night_vision 1 0 true
#effect give @a[distance=..50] minecraft:blindness 1 0 true
scoreboard players add @a[distance=..25] svm_ep.shaking 25
scoreboard players add @a[distance=..70] svm_ep.shaking 20
scoreboard players add @a[distance=..100] svm_ep.shaking 40
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.25 1
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 2 0.25 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0 1
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 2 0.7 1

execute at @s run scoreboard players set @a[distance=..70] svm_ep.clear_slowness 5
execute at @s run effect give @a[distance=..70] minecraft:slowness 1 6 true
execute at @s run scoreboard players set @a[distance=..70] svm_ep.clear_speed 8
execute at @s run effect give @a[distance=..70] minecraft:speed 1 5 true
execute at @a[distance=..70] run playsound minecraft:entity.blaze.shoot master @p ~ ~ ~ 2 0.25 1
execute at @a[distance=..70] run playsound minecraft:entity.blaze.hurt master @p ~ ~ ~ 2 0.25 1
execute at @a[distance=..70] run playsound minecraft:entity.generic.explode master @p ~ ~ ~ 2 0 1
execute at @a[distance=..70] run playsound minecraft:entity.generic.explode master @p ~ ~ ~ 2 0 1
execute at @a[distance=..70] run playsound minecraft:entity.warden.roar master @p ~ ~ ~ 2 0 1



scoreboard players add @e[tag=hit_by,distance=..20] svm_ep.deal_damage 5
scoreboard players add @e[tag=hit_by,distance=..10] svm_ep.deal_damage 10
scoreboard players add @e[tag=hit_by,distance=..6] svm_ep.deal_damage 15
scoreboard players add @e[tag=hit_by,distance=..3] svm_ep.deal_damage 20
execute as @e[tag=hit_by] run function svm_ep:damage/deal_normal {"damage":"5","attacker":"@e[limit=1,tag=same_id]","type":"no_cooldown"}
tag @e remove hit_by

particle minecraft:explosion ~ ~ ~ 4 4 4 0 55 force @a[distance=..125]
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force @a[distance=..125]
particle minecraft:flame ~ ~ ~ 0 0 0 1 150 force @a[distance=..125]
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 1 250 force @a[distance=..125]

particle dust{color:[1f,0f,0f],scale:0.5f} ~ ~ ~ 5 5 5 0 150 force @a[distance=..175]
particle dust{color:[1f,0.1f,0f],scale:0.7f} ~ ~ ~ 4 4 4 0 100 force @a[distance=..175]
particle dust{color:[18000000f,0.25f,0f],scale:1.25f} ~ ~ ~ 3 3 3 0 70 force @a[distance=..175]
particle dust{color:[18000000f,0.95f,0f],scale:2f} ~ ~ ~ 2 2 2 0 50 force @a[distance=..175]
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot

execute unless score doBlocksDestroy svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/if_true
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
execute unless score replaceBlocks svm_ep.gamerule matches 0 run function svm_ep:power/explosion/destroyer/destruction/blocks
place feature svm_ep:fire/fire_large ~8 ~ ~
place feature svm_ep:fire/fire_large ~-8 ~ ~
place feature svm_ep:fire/fire_large ~ ~8 ~
place feature svm_ep:fire/fire_large ~ ~-8 ~
place feature svm_ep:fire/fire_large ~ ~ ~8
place feature svm_ep:fire/fire_large ~ ~ ~-8
kill @s