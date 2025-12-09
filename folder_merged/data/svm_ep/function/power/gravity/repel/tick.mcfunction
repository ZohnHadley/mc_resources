scoreboard players add @s svm_ep.used_move 4
scoreboard players add @s svm_ep.mana_drain 120


execute as @s[scores={svm_ep.mana=..0}] run effect clear @s minecraft:slow_falling
execute as @s[scores={svm_ep.mana=..0}] run return run scoreboard players reset @s svm_ep.p.gravity_repel_zone

effect give @s minecraft:slow_falling 1 0 true


tag @s add executor

execute at @s as @e[distance=..8] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

execute at @s as @e[tag=!svm_ep.no_gravity,tag=!svm_ep.can_redirect,tag=!same_id,type=!#svm_ep:gravity_no_repel,distance=..3.5,tag=!executor] unless entity @s[type=#minecraft:impact_projectiles,nbt={OnGround:1b}] run function svm_ep:power/gravity/repel/in_range
tag @s remove executor



execute at @s as @e[tag=!same_id,tag=svm_ep.can_redirect,distance=..4.5] run function svm_ep:fighting_style/redirect_projectile_permament
tag @e[distance=..15] remove same_id