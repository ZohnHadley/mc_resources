tag @s add svm_ep.mangrove_tower_motion
tag @s add svm_ep.check_to_recall

tp @s ~ ~ ~ ~ -90
execute if entity @n[tag=executor,scores={svm_ep.p.flora_mangrove_tower_variant_charge=10..}] run tp @s @n[tag=executor]
