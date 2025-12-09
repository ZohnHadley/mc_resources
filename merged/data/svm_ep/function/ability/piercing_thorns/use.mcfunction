execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[0.05f,0.03f,0f],scale:1} ~ ~ ~ 1 1 1 0 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[0.15f,0.1f,0f],scale:1} ~ ~ ~ 1 1 1 0 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[0.4f,0.25f,0f],scale:1} ~ ~ ~ 1 1 1 0 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[18000000f,0.25f,0.3f],scale:2} ~ ~ ~ 1 1 1 0 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[1f,0.2f,0.25f],scale:2.3} ~ ~ ~ 1 1 1 0 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust{color:[0f,1f,0.3f],scale:1} ~ ~ ~ 1 1 1 0 23
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:block_marker{block_state:sweet_berry_bush} ~ ~ ~ 1 1 1 0 8
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:crit ~ ~ ~ 1 1 1 1.85 18
playsound minecraft:block.sweet_berry_bush.break master @a[distance=..30]
playsound minecraft:entity.player.attack.crit master @a[distance=..30] ~ ~ ~ 1 1.3
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^2.5 run scoreboard players set @e[type=!#svm_ep:technical,tag=!executor,distance=..5] svm_ep.effect 1
execute at @s anchored eyes positioned ^ ^ ^2.5 run scoreboard players add @e[type=!#svm_ep:technical,tag=!executor,distance=..5] svm_ep.e.flora_thorned 15
execute at @s[tag=svm_ep.flora_user] anchored eyes positioned ^ ^ ^2.5 run scoreboard players add @e[type=!#svm_ep:technical,tag=!executor,distance=..5] svm_ep.e.flora_thorned 25
tag @s remove executor
scoreboard players add @s svm_ep.used_move 60
