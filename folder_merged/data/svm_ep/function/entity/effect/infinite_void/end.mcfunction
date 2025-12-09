attribute @s minecraft:jump_strength modifier remove svm_ep.e.infinite_void
attribute @s minecraft:movement_speed modifier remove svm_ep.e.infinite_void
attribute @s minecraft:entity_interaction_range modifier remove svm_ep.e.infinite_void
attribute @s minecraft:block_interaction_range modifier remove svm_ep.e.infinite_void

data merge entity @s[tag=svm_ep.infinite_void_return_ai] {NoAI:0b}
data merge entity @s[tag=svm_ep.infinite_void_return_voice] {Silent:0b}
tag @s remove svm_ep.infinite_void_return_ai
tag @s remove svm_ep.infinite_void_return_voice
tag @s remove svm_ep.infinite_void_struct_by