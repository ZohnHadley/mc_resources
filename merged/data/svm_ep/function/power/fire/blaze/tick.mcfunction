scoreboard players add @s svm_ep.mana_drain 50

scoreboard players add @s svm_ep.p.fire_ability_06_delay 2
scoreboard players set @s[scores={svm_ep.p.fire_ability_06_delay=60..}] svm_ep.p.fire_ability_06_delay 60
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.used_move 4
effect give @s minecraft:weakness 1 0 true
effect give @s minecraft:mining_fatigue 1 2 true


execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:4}} at @s anchored eyes positioned ^ ^ ^4.5 store result score @s svm_ep.charge_length run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 to svm_ep:technical 0 0 0 filtered minecraft:fire

tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^8 as @e[scores={svm_ep.projectile=-10..},distance=..12,sort=nearest] run function svm_ep:power/fire/blaze/burn_projectile
execute at @s anchored eyes positioned ^ ^ ^8 as @e[type=!#svm_ep:technical,distance=..12,tag=!executor,limit=1,sort=nearest] run function svm_ep:power/fire/blaze/burn_mob
tag @s remove executor
execute if score @s svm_ep.charge_length matches 5.. at @s anchored eyes positioned ^ ^ ^4.5 run place feature svm_ep:fire/fire_small
execute if score @s svm_ep.charge_length matches 25.. at @s anchored eyes positioned ^ ^ ^4.5 run place feature svm_ep:fire/fire_medium
execute if score @s svm_ep.charge_length matches 75.. at @s anchored eyes positioned ^ ^ ^4.5 run place feature svm_ep:fire/fire_large
execute at @s anchored eyes positioned ^ ^ ^8 run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 fire[age=0] replace fire

execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:flame ~ ~ ~ 2 2 2 0.15 10
execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:3f} ~ ~0.1 ~ 2 2 2 0 3
execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:dust{color:[18000000f,1f,0f],scale:3f} ~ ~0.1 ~ 2.5 2.5 2.5 0 5
execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:dust{color:[18000000f,0.5f,0f],scale:3f} ~ ~0.1 ~ 3 3 3 0 7

execute at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.25 1

execute at @s run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:2.5f} ~ ~0.1 ~ 0.2 0.2 0.2 0 1
execute at @s run particle minecraft:dust{color:[18000000f,1f,0f],scale:2.25f} ~ ~0.1 ~ 0.2 0.2 0.2 0 1
execute at @s run particle minecraft:dust{color:[18000000f,0.75f,0f],scale:2f} ~ ~0.05 ~ 0.3 0.1 0.3 0 2
execute at @s run particle minecraft:dust{color:[18000000f,0.5f,0f],scale:1.75f} ~ ~0.025 ~ 0.5 0.1 0.5 0 2
execute at @s run particle minecraft:dust{color:[18000000f,0.25f,0f],scale:1.5f} ~ ~0.025 ~ 0.8 0.1 0.8 0 4
execute at @s run particle minecraft:dust{color:[1f,0.25f,0f],scale:1.25f} ~ ~0.025 ~ 0.8 0.1 0.8 0 8


effect give @s minecraft:fire_resistance 1 0 true

execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..1}] svm_ep.using_move