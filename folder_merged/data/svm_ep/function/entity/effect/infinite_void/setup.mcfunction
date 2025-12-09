tag @s add svm_ep.infinite_void_struct_by

execute unless data entity @s {NoAI:1b} run tag @s add svm_ep.infinite_void_return_ai
execute unless data entity @s {Silent:1b} run tag @s add svm_ep.infinite_void_return_voice
data merge entity @s {NoAI:1b,Silent:1b}

attribute @s minecraft:jump_strength modifier add svm_ep.e.infinite_void -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add svm_ep.e.infinite_void -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add svm_ep.e.infinite_void -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add svm_ep.e.infinite_void -1 add_multiplied_total
