execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~1 ~ 2 0
execute at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..20] ~ ~1 ~ 1.5 0
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 2.7 100
execute at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 5.7 500

execute at @s run function svm_ep:system/dimension/save
scoreboard players operation @s svm_ep.dimension_pre.dimension_gate = @s svm_ep.previous_dimension
scoreboard players operation @s svm_ep.dimension_pre.cherry_island = @s svm_ep.previous_dimension

execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=1}] in minecraft:overworld run tp @s ~ ~ ~
execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=1}] in minecraft:overworld run spreadplayers ~ ~ 1 10 false @s

execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] in minecraft:the_nether run tp @s ~ ~ ~
execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] in minecraft:the_nether run spreadplayers ~ ~ 1 10 under 127 false @s


execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=3}] in minecraft:the_end run fill 98 49 2 102 51 -2 air
execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=3}] in minecraft:the_end run fill 98 48 2 102 48 -2 obsidian
execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=3}] in minecraft:the_end run tp @s 100.5 49 0.5
execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=3}] in minecraft:the_end positioned 100.5 49 0.5 run kill @e[distance=..3.5,tag=svm_ep.dimension_gate_display]

execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=4}] in svm_ep:paradise run tp @s ~ ~ ~
execute at @s if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=4}] in svm_ep:paradise run spreadplayers ~ ~ 1 10 false @s


execute as @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=5}] run function svm_ep:power/dimension_traveler/calculate_cherry_id
execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=5}] store result storage svm_ep:coordinates input.x int 1 run scoreboard players get %calculate svm_ep.dimension_cherry_island_id
execute if entity @e[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=5}] run function svm_ep:power/dimension_traveler/tp_to_cherry_island with storage svm_ep:coordinates input

scoreboard players operation @s svm_ep.dimension_brought_by_id = @n[tag=executor] svm_ep.entity_id

tag @s remove tp





execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~1 ~ 2 1.2
execute at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..20] ~ ~1 ~ 1.5 0
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 2.7 100
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 10.7 500
effect give @s minecraft:slow_falling 10 0 true
effect give @s minecraft:nausea 10 0 true
effect give @s minecraft:slowness 10 3 true
effect give @s minecraft:weakness 10 3 true
effect give @s minecraft:blindness 5 0 true