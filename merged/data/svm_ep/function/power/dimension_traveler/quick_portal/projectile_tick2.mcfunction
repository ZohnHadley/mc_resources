scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @e[tag=svm_ep.dimension_traveler_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

#execute at @s[scores={svm_ep.lifetime=2}] run playsound minecraft:block.end_portal.spawn master @a[distance=..15] ~ ~ ~ 0.8 2
execute at @s[scores={svm_ep.lifetime=2}] run playsound minecraft:entity.guardian.death master @a[distance=..15] ~ ~ ~ 2 2

execute at @s[scores={svm_ep.lifetime=4..}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.7 3
execute at @s[scores={svm_ep.lifetime=4..}] run particle minecraft:portal ~ ~ ~ 0 0 0 2.6 10

execute at @s[scores={svm_ep.lifetime=6}] anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/dimension_traveler/quick_portal/land_punch

#execute at @s[scores={svm_ep.lifetime=7}] run tellraw @a ["",{"text":"Fiut: "},{"score":{"name":"@s","objective":"svm_ep.deal_damage"}}]
execute as @s[scores={svm_ep.lifetime=6}] positioned ^ ^ ^0.2 as @e[tag=!same_id,dx=2.5,type=!#svm_ep:technical] run tag @s add hitby
execute as @s[scores={svm_ep.lifetime=6}] positioned ^ ^ ^0.2 as @e[tag=!same_id,distance=..2.5,type=!#svm_ep:technical] run tag @s add hitby
execute as @s[scores={svm_ep.lifetime=6}] run scoreboard players operation @e[tag=hitby] svm_ep.deal_damage = @s svm_ep.deal_damage
execute as @s[scores={svm_ep.lifetime=6}] positioned ^ ^ ^0.2 as @e[tag=hitby] run function svm_ep:damage/deal_no_effects {"damage":"0","attacker":"@e[limit=1,tag=same_id]","type":"no_cooldown"}
execute as @s[scores={svm_ep.lifetime=6,svm_ep.p.dimension_traveler_gate_destination=2}] if predicate svm_ep:chance/40_percent positioned ^ ^ ^0.2 as @e[tag=hitby] run damage @s 6 minecraft:on_fire
execute as @s[scores={svm_ep.lifetime=6,svm_ep.p.dimension_traveler_gate_destination=2}] if predicate svm_ep:chance/40_percent positioned ^ ^ ^0.2 as @e[tag=hitby] run damage @s 4 minecraft:on_fire
execute as @s[scores={svm_ep.lifetime=6,svm_ep.p.dimension_traveler_gate_destination=2}] positioned ^ ^ ^0.2 as @e[tag=hitby] run damage @s 2 minecraft:on_fire
execute as @s[scores={svm_ep.lifetime=6,svm_ep.p.dimension_traveler_gate_destination=2}] if predicate svm_ep:chance/40_percent positioned ^ ^ ^0.2 run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.5 10
execute as @s[scores={svm_ep.lifetime=6,svm_ep.p.dimension_traveler_gate_destination=2}] positioned ^ ^ ^0.2 run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.5 10
tag @e[tag=hitby] remove hitby

data merge entity @s[scores={svm_ep.lifetime=2}] {teleport_duration:1}
data merge entity @s[scores={svm_ep.lifetime=2}] {transformation:{scale:[1.35f,1.35f,1.35f]},interpolation_duration:4,start_interpolation:-1}
data merge entity @s[scores={svm_ep.lifetime=12}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:4,start_interpolation:-1}

tag @s remove executor
kill @s[scores={svm_ep.lifetime=18..},type=!player]
tag @e remove same_id