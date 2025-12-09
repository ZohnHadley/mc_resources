#execute if predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.check_click 1
tag @s add executor

execute at @s as @e[distance=..5,type=!item,tag=!svm_ep.projectile_setup] at @s on origin if entity @s[tag=executor] as @n run function svm_ep:power/fire/arms/setup_projectile

scoreboard players remove @s[tag=fire_punched_tick] svm_ep.p.fire_arms 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_fire:1b}}} run scoreboard players add @s svm_ep.p.fire_arms 2

scoreboard players remove @s svm_ep.p.fire_arms 1

tag @s remove fire_punched_tick
tag @s remove executor
execute if predicate svm_ep:chance/10_percent at @s run particle minecraft:flame ~ ~0.7 ~ 0.25 0.25 0.25 0.3 15
execute at @s run particle minecraft:flame ~ ~0.7 ~ 0.45 0.45 0.45 0.1 1
execute at @s if predicate svm_ep:chance/10_percent run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 1.25
execute at @s as @e[sort=nearest,limit=1,tag=svm_ep.fire_arms_ring] run tp @s ~ ~1 ~

execute at @s[scores={svm_ep.p.fire_arms=0}] run particle minecraft:flame ~ ~1 ~ 0.25 0.5 0.25 0.75 70
execute at @s[scores={svm_ep.p.fire_arms=0}] run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.2
execute at @s[scores={svm_ep.p.fire_arms=0}] run particle minecraft:dust{color:[18000000f,1f,0.1f],scale:2f} ~ ~0.7 ~ 1.25 0.25 1.25 0 15
execute at @s[scores={svm_ep.p.fire_arms=0}] run particle minecraft:flame ~ ~0.7 ~ 1.25 0.25 1.25 0.4 15
