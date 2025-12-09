execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:dust{color:[0.4f,0.4f,18000000f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 6
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:sonic_boom
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 0.5
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 2 1
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 2 0

execute as @e[type=!#svm_ep:technical,tag=!executor,dx=0] run tag @s add svm_ep.tp
execute as @e[type=!#svm_ep:technical,tag=!executor,distance=..1] run tag @s add svm_ep.tp
execute as @e[type=item,tag=!executor,distance=..5] run tag @s add svm_ep.tp

execute at @s anchored eyes positioned ^ ^ ^2 run tp @e[tag=svm_ep.tp] ~ ~ ~ 
effect give @e[tag=svm_ep.tp] slowness 1 3 true
effect give @e[tag=svm_ep.tp] weakness 1 3 true
execute unless entity @e[tag=svm_ep.tp] run scoreboard players add @s svm_ep.p.gravity_ability_04_delay 80

tag @e remove svm_ep.tp
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 0
execute at @s run playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 0.7
effect give @s minecraft:blindness 1 0 true