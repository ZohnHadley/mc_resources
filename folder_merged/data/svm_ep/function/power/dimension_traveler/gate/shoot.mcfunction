tag @s add executor
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=5}] unless entity @s[scores={svm_ep.dimension_cherry_island_id=1..}] run function svm_ep:power/dimension_traveler/add_cherry_id

execute anchored eyes positioned ^ ^ ^0.1 summon minecraft:marker at @s run function svm_ep:power/dimension_traveler/gate/shoot_
tag @s remove executor
scoreboard players add @a[distance=..15] svm_ep.shaking 5

scoreboard players reset @s svm_ep.using_move
effect clear @s slowness