
execute at @s as @n[scores={svm_ep.e.freezed_display_order=1}] run function svm_ep:entity/effect/freezed/clear_model
#execute at @s run fill ~-1.55 ~-1 ~-1.55 ~1.55 ~2 ~1.55 air replace #minecraft:ice
execute at @s run particle minecraft:item{item:ice} ~ ~1 ~ 0 0 0 1 100
execute at @s positioned ~ ~0.5 ~ align y run tp @s ~ ~ ~
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0

attribute @s minecraft:movement_speed modifier remove svm_ep.e.freezed

attribute @s minecraft:block_break_speed modifier remove svm_ep.e.freezed
attribute @s minecraft:block_interaction_range modifier remove svm_ep.e.freezed
attribute @s minecraft:entity_interaction_range modifier remove svm_ep.e.freezed
