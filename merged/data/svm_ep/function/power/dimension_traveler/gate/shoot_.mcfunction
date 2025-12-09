tag @s add svm_ep.dimension_gate_display

scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players operation @s svm_ep.dimension_cherry_island_id = @n[tag=executor] svm_ep.dimension_cherry_island_id
scoreboard players operation @s svm_ep.p.dimension_traveler_gate_destination = @n[tag=executor] svm_ep.p.dimension_traveler_gate_destination
particle minecraft:explosion
data modify entity @s Rotation set from entity @p Rotation
execute unless entity @s[scores={svm_ep.p.dimension_traveler_gate_destination=1..}] run scoreboard players set @s svm_ep.p.dimension_traveler_gate_destination 1

playsound minecraft:block.conduit.deactivate master @a[distance=..20] ~ ~ ~ 2 0
playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1 1
particle end_rod ~ ~ ~ 0 0 0 4 100