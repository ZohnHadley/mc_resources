scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @e[tag=svm_ep.dimension_traveler_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=same_id,limit=1] eyes

execute at @s run scoreboard players set @e[tag=svm_ep.dimension_portal_hitbox,distance=..4] svm_ep.lifetime 1

execute at @s as @e[type=#minecraft:impact_projectiles,distance=..4] at @s run tp @s ^ ^ ^-5

execute at @s[scores={svm_ep.lifetime=3}] run playsound minecraft:block.end_portal.spawn master @a[distance=..15] ~ ~ ~ 0.15 1.6
execute at @s[scores={svm_ep.lifetime=76}] run playsound minecraft:block.ender_chest.close master @a[distance=..15] ~ ~ ~ 1 0.6

execute at @s[scores={svm_ep.lifetime=4..13}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.7 3
execute at @s[scores={svm_ep.lifetime=14..24}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.9 3
execute at @s[scores={svm_ep.lifetime=25..34}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.3 3
execute at @s[scores={svm_ep.lifetime=35..44}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.8 3
execute at @s[scores={svm_ep.lifetime=45..54}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 2.5 3


execute at @s[scores={svm_ep.lifetime=4..45}] run particle minecraft:portal ~ ~ ~ 0 0 0 1.6 10
execute at @s[scores={svm_ep.lifetime=14..45}] run particle minecraft:portal ~ ~ ~ 0 0 0 1.6 3
execute at @s[scores={svm_ep.lifetime=24..45}] run particle minecraft:portal ~ ~ ~ 0 0 0 1.7 3
execute at @s[scores={svm_ep.lifetime=34..45}] run particle minecraft:portal ~ ~ ~ 0 0 0 1.8 3
execute at @s[scores={svm_ep.lifetime=40..45}] run particle minecraft:portal ~ ~ ~ 0 0 0 2.7 3

execute as @s[tag=!svm_ep.stop,scores={svm_ep.lifetime=..79}] as @e[tag=!svm_ep.dimension_portal_hitbox,dx=1,type=!#svm_ep:technical] unless entity @s[tag=same_id,scores={svm_ep.using_move=1..100}] run scoreboard players set @e[tag=executor,scores={svm_ep.lifetime=..79}] svm_ep.lifetime 79
execute as @s[tag=!svm_ep.stop,scores={svm_ep.lifetime=..79}] as @e[tag=!svm_ep.dimension_portal_hitbox,dx=1,type=!#svm_ep:technical] unless entity @s[tag=same_id,scores={svm_ep.using_move=1..100}] run function svm_ep:power/dimension_traveler/quick_portal/tp

execute as @e[tag=same_id,limit=1] unless predicate svm_ep:holding_ability run scoreboard players set @e[tag=executor,scores={svm_ep.lifetime=26..76}] svm_ep.lifetime 77
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:dimension_portal"]
data merge entity @s[scores={svm_ep.lifetime=5}] {teleport_duration:1}
data merge entity @s[scores={svm_ep.lifetime=5}] {transformation:{scale:[2.05f,2.05f,2.05f]},interpolation_duration:7,start_interpolation:-1}
data merge entity @s[scores={svm_ep.lifetime=80}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:8,start_interpolation:-1}

tag @s remove executor
kill @s[scores={svm_ep.lifetime=90..}]
tag @e remove same_id