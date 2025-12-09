scoreboard players reset @s svm_ep.p.water_manipulation_state
scoreboard players reset @s svm_ep.using_move
tag @s add executor
execute summon item_display run function svm_ep:power/water/manipulation/pick_up/setup
tag @s remove executor
scoreboard players remove @s svm_ep.p.water_ability_04_delay 17