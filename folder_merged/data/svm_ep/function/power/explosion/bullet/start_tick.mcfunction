
execute at @s[scores={svm_ep.using_move=795..800}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.15f,0.1f,0f],scale:1.3f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=790..794}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.21f,0.13f,0f],scale:1.35f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=785..789}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.43f,0.16f,0f],scale:1.4f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=780..784}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.55f,0.19f,0f],scale:1.45f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=775..779}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.6f,0.26f,0f],scale:1.5f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=770..774}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.65f,0.29f,0f],scale:1.55f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=765..769}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.7f,0.36f,0f],scale:1.6f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=760..764}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.75f,0.39f,0f],scale:1.65f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=755..759}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.8f,0.46f,0f],scale:1.7f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=750..754}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.87f,0.49f,0f],scale:1.75f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=745..749}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0.9f,0.56f,0f],scale:1.8f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=740..744}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[1f,0.59f,0f],scale:1.85f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=735..739}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[1f,0.66f,0f],scale:1.9f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=730..734}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[1f,0.69f,0f],scale:1.95f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=725..729}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.76f,0f],scale:2f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=720..724}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.79f,0f],scale:2.05f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=715..719}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.86f,0f],scale:2.1f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=710..714}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.89f,0f],scale:2.15f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=705..709}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.96f,0f],scale:2.1f} ~ ~ ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=700..704}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[18000000f,0.99f,0f],scale:2.15f} ~ ~ ~ 0.2 0.2 0.2 0 1

execute at @s[scores={svm_ep.using_move=756}] run particle minecraft:explosion ~ ~1 ~ 2 2 2 0 6
execute at @s[scores={svm_ep.using_move=786..796}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 1 1.6
execute at @s[scores={svm_ep.using_move=776..786}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 1 1.7
execute at @s[scores={svm_ep.using_move=766..776}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 1 1.6
execute at @s[scores={svm_ep.using_move=756..766}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 1 1.7
execute at @s[scores={svm_ep.using_move=..756}] run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 1 2

execute at @s anchored eyes positioned ^ ^ ^1.5 run particle minecraft:dust{color:[18000000f,0.99f,0f],scale:1.15f} ~ ~ ~ 0 0 0 0 1

execute at @s anchored eyes positioned ^ ^ ^1.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.3 4

scoreboard players add @s svm_ep.p.explosion_bullet_charge 1

tag @s[scores={svm_ep.using_move=701}] add explode
execute unless entity @s[scores={svm_ep.mana=1..}] run tag @s add explode
execute unless predicate svm_ep:holding_ability run tag @s add explode
scoreboard players add @s svm_ep.mana_drain 255

scoreboard players add @s svm_ep.p.explosion_ability_02_delay 2
execute as @s[tag=explode] at @s run function svm_ep:power/explosion/bullet/shoot
