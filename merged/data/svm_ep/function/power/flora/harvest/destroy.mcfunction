scoreboard players operation @s svm_ep.p.flora_harvest_max_length_prev = %total svm_ep.raycast_length
scoreboard players add @s svm_ep.p.flora_harvest_max_length_prev 4

function svm_ep:break_block
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.4 0.4 0.4 0.1 4
scoreboard players set @s svm_ep.raycast_length -1
scoreboard players add @s svm_ep.mana_drain 145

execute unless entity @s[scores={svm_ep.selected_ability=7}] run return 0
execute as @s[scores={svm_ep.p.flora_harvest_type=1}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/grass destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=2}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/flowers destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=3}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/leaves destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=4}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/mushrooms destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=5}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/wood destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=6}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/moss destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=7}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/crops destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=8}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/aquatic destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=9}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #svm_ep:flora_harvest/special destroy
