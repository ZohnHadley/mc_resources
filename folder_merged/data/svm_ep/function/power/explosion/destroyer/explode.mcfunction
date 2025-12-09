
tag @e remove executor
tag @e remove same_id

tag @s add executor
execute as @e[tag=svm_ep.explosion_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
scoreboard players operation @e[tag=same_id] svm_ep.p.explosion_destroyer_charge /= %70 svm_ep.numbers
scoreboard players operation @s svm_ep.p.explosion_destroyer_charge = @n[tag=same_id] svm_ep.p.explosion_destroyer_charge
scoreboard players add @s svm_ep.p.explosion_destroyer_charge 3

scoreboard players reset @e[tag=same_id] svm_ep.p.explosion_destroyer_charge
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 1.3 1000
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 1.78 2000
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 3 2000
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot
execute at @s run function svm_ep:entity/projectile/2/shoot

#execute at @s run function svm_ep:power/explosion/destroyer/sphere_rot0
execute store result storage svm_ep:math input.r int 1 run scoreboard players get @s svm_ep.p.explosion_destroyer_charge
execute at @s run function svm_ep:system/sphere/hemicircle {"c":"execute unless entity @e[tag=svm_ep.explosion_ray,distance=..2.5] run function svm_ep:power/explosion/destroyer/ray","p":"11"}
tag @s remove executor
tag @e remove same_id