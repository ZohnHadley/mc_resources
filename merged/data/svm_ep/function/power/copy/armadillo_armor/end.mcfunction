effect clear @s blindness
effect clear @s minecraft:resistance

attribute @s minecraft:explosion_knockback_resistance modifier remove svm_ep:armadillo_armor
attribute @s minecraft:attack_damage modifier remove svm_ep:armadillo_armor
attribute @s minecraft:movement_speed modifier remove svm_ep:armadillo_armor
attribute @s minecraft:entity_interaction_range modifier remove svm_ep:armadillo_armor
attribute @s minecraft:block_interaction_range modifier remove svm_ep:armadillo_armor
attribute @s minecraft:knockback_resistance modifier remove svm_ep:armadillo_armor
attribute @s minecraft:knockback_resistance modifier remove svm_ep:armadillo_armor
attribute @s minecraft:armor modifier remove svm_ep:armadillo_armor
attribute @s minecraft:armor_toughness modifier remove svm_ep:armadillo_armor
attribute @s minecraft:scale modifier remove svm_ep:armadillo_armor
execute at @s run playsound minecraft:entity.armadillo.unroll_finish master @a[distance=..25] ~ ~ ~ 1.5 0.9