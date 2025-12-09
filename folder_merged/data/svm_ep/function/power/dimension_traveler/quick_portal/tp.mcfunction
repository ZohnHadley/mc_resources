execute at @s anchored eyes positioned ^ ^ ^0.2 run function svm_ep:power/dimension_traveler/quick_portal/raycast

execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run damage @s 6 minecraft:on_fire
execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run damage @s 4 minecraft:on_fire
execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run damage @s 3 minecraft:on_fire
execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.3 10
execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.4 10
execute if entity @n[tag=executor,scores={svm_ep.p.dimension_traveler_gate_destination=2}] at @s if predicate svm_ep:chance/40_percent run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.5 10

effect give @s minecraft:blindness 1 0 true
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.8 ~ 0 0 0 0 1
execute at @s run particle minecraft:end_rod ~ ~0.8 ~ 0 0 0 0.5 250
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1.5 0.7
tag @s remove end_raycast