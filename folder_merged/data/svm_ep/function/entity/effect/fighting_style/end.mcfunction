
scoreboard players reset @s svm_ep.e.fighting_style

attribute @s minecraft:attack_damage modifier remove svm_ep:fighting_style
attribute @s minecraft:attack_speed modifier remove svm_ep:fighting_style
attribute @s minecraft:movement_speed modifier remove svm_ep:fighting_style
attribute @s minecraft:jump_strength modifier remove svm_ep:fighting_style
function svm_ep:entity/effect/fighting_style/quick_fov/end