#execute as @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=1..}]
scoreboard players remove @s svm_ep.p.explosion_destroyer_uncharge_delay 1
scoreboard players add @s svm_ep.p.explosion_ability_10_delay 6

effect give @s slowness 5 3 true
effect give @s weakness 5 3 true


execute at @s run function svm_ep:power/explosion/destroyer/charge_particle

tag @e remove executor
tag @e remove same_id
tag @s add executor

execute as @e[tag=svm_ep.explosion_destroyer_charge] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute as @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=0}] as @e[tag=same_id] run tag @s add svm_ep.explosion_destroyer_charge_active
execute as @e[tag=same_id] at @s run tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] eyes
execute as @e[tag=same_id] at @s run function svm_ep:power/explosion/destroyer/raycast2

execute at @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=0}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..100] ~ ~ ~ 2 0.78
execute at @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=13}] run playsound minecraft:entity.wither.ambient master @a[distance=..100] ~ ~ ~ 2 0.9
execute at @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=1..13}] run playsound minecraft:entity.wither.ambient master @a[distance=..100] ~ ~ ~ 2 0.9

tag @s remove executor
tag @e remove same_id