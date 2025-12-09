tag @s[scores={svm_ep.p.harpie_movement=1}] add has

effect clear @s[tag=has] minecraft:jump_boost
execute at @s[tag=has] run playsound minecraft:item.armor.equip_elytra master @a[distance=..20] ~ ~ ~ 2 0
execute at @s[tag=!has] run playsound minecraft:item.armor.equip_elytra master @a[distance=..20] ~ ~ ~ 2 0.7
execute unless data entity @s equipment.chest run loot replace entity @s armor.chest loot svm_ep:items/harpie_wings

scoreboard players set @s[tag=!has] svm_ep.p.harpie_movement 1
scoreboard players set @s[tag=has] svm_ep.p.harpie_movement 0
tag @s remove has
attribute @s[scores={svm_ep.p.harpie_movement=1}] minecraft:fall_damage_multiplier modifier add svm_ep.harpie_wings -0.75 add_multiplied_total
