execute at @s run playsound minecraft:block.vine.place master @a[distance=..30] ~ ~ ~ 3 0
execute at @s[tag=!svm_ep.flora_rooted_bridge] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 0.8
execute at @s[tag=!svm_ep.flora_rooted_bridge] anchored eyes run particle minecraft:explosion_emitter ^ ^ ^3.5

execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.flora_rooted_bridge"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @n[tag=new] svm_ep.projectile 10
scoreboard players set @n[tag=new] svm_ep.projectile_type 1
tp @e[tag=new] @s
execute at @s[tag=!svm_ep.flora_rooted_bridge] anchored eyes positioned ^ ^ ^1.2 run tp @e[tag=new] ~ ~-1 ~
execute at @s[tag=svm_ep.flora_rooted_bridge] anchored eyes positioned ^ ^ ^ run tp @e[tag=new] ~ ~ ~

#execute as @s[tag=!svm_ep.flora_rooted_bridge] run scoreboard players set @e[tag=new] svm_ep.lifetime 3
execute as @s[tag=svm_ep.flora_rooted_bridge] run tag @e[tag=new] add svm_ep.flora_rooted_bridge_child
execute as @s[tag=svm_ep.flora_rooted_bridge] run scoreboard players set @e[tag=new] svm_ep.lifetime 21
tag @e remove new