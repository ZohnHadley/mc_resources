scoreboard players add @s svm_ep.using_move 1

scoreboard players operation @s svm_ep.charge_length += %flora_piercing_vine_charge_speed svm_ep.world_settings

scoreboard players operation @s svm_ep.p.flora_piercing_vine_count = @s svm_ep.charge_length
scoreboard players operation @s svm_ep.p.flora_piercing_vine_count /= %flora_piercing_vine_per_one svm_ep.world_settings

scoreboard players add @s svm_ep.mana_drain 175

execute if score @s svm_ep.p.flora_piercing_vine_count >= %flora_piercing_vine_vines_max svm_ep.world_settings run return run function svm_ep:power/flora/piercing_vine/end_charge
execute as @s[scores={svm_ep.mana=..2}] run return run function svm_ep:power/flora/piercing_vine/end_charge
