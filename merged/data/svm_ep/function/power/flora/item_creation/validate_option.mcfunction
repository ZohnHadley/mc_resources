execute store result storage svm_ep:math player.id int 1.0 run scoreboard players get @s svm_ep.p.flora_item_section
scoreboard players operation @s svm_ep.p.flora_item = @s svm_ep.z.mid_ability_input

function svm_ep:power/flora/item_creation/macro_give with storage svm_ep:math player
scoreboard players reset @s svm_ep.z.mid_ability_input
scoreboard players enable @s svm_ep.z.mid_ability_input