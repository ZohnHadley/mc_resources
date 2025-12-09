scoreboard players add @s[scores={svm_ep.using_move=701..740}] svm_ep.using_move 1
effect give @s minecraft:slowness 1 5 true

execute at @s anchored eyes positioned ^ ^ ^1 run tp @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active] ~ ~ ~
execute at @s run data modify entity @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active] Rotation set from entity @s Rotation
execute at @s run scoreboard players set @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active,scores={svm_ep.lifetime=6..}] svm_ep.lifetime 10
execute at @s[scores={svm_ep.selected_ability=2}] run scoreboard players add @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active,scores={svm_ep.lifetime=6..}] svm_ep.p.gravity_field_strength 1
execute at @s[scores={svm_ep.selected_ability=2}] at @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active,scores={svm_ep.lifetime=6..}] run particle minecraft:dust{color:[0.4f,0.0f,0.05f],scale:0.8f} ~ ~ ~ 0.23 0.23 0.23 0.5 3
execute at @s[scores={svm_ep.selected_ability=2}] at @n[tag=svm_ep.gravity_field_blast,tag=!svm_ep.active,scores={svm_ep.lifetime=6..}] run particle minecraft:dust{color:[1f,0.5f,0.55f],scale:1f} ~ ~ ~ 0.1 0.1 0.1 0.5 1


execute as @s[scores={svm_ep.using_move=..745}] run function svm_ep:system/macro/command {command:"emotes play gravity_field_blast_hold"}

execute if predicate svm_ep:holding_ability run return 0
function svm_ep:system/macro/command {command:"emotes play gravity_field_blast_shoot"}

execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:gust
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 1.5 2 0.2
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.firework_rocket.launch master @a[distance=..50] ~ ~ ~ 1.25 0 0.2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.75 70


scoreboard players reset @s svm_ep.using_move
effect clear @s minecraft:slowness