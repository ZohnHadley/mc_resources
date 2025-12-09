
execute at @s as @n[scores={svm_ep.e.cobwebed_display_order=1}] run function svm_ep:entity/effect/cobwebed/clear_model
#execute at @s run fill ~-1.55 ~-1 ~-1.55 ~1.55 ~2 ~1.55 air replace #minecraft:ice
execute at @s positioned ~ ~0.5 ~ align y run tp @s ~ ~ ~

attribute @s minecraft:movement_speed modifier remove svm_ep.e.cobwebed

attribute @s minecraft:block_break_speed modifier remove svm_ep.e.cobwebed
attribute @s minecraft:block_interaction_range modifier remove svm_ep.e.cobwebed
attribute @s minecraft:entity_interaction_range modifier remove svm_ep.e.cobwebed
