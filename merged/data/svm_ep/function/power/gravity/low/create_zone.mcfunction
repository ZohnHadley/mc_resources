
execute at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 0 0 0 1.03 100
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 0.5
scoreboard players reset @s svm_ep.using_move
tag @s add keep_gravity