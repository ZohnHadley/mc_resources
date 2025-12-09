scoreboard players set @s svm_ep.p.water_manipulation_state 4
execute if entity @e[tag=svm_ep.water_whirlpool,distance=..5] run return 0
tag @s add executor
execute align xyz positioned ~0.5 ~0.92 ~0.5 summon item_display run function svm_ep:power/water/manipulation/whirlpool/setup
tag @s remove executor
