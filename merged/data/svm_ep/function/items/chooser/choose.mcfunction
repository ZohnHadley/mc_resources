execute at @s run playsound minecraft:block.note_block.pling master @a[distance=..15] ~ ~ ~ 0.7 0
execute as @s[tag=svm_ep.power_user] run function svm_ep:power/delete_power
execute unless entity @s[scores={svm_ep.chooser_chosen=1..}] run return run function svm_ep:player/swap_hand_items




execute at @s run playsound minecraft:entity.wither.death master @a[distance=..15] ~ ~ ~ 0.1 2



execute store result storage svm_ep:power temp.selected int 1 run scoreboard players get @s svm_ep.chooser_chosen
function svm_ep:items/chooser/choose_macro with storage svm_ep:power temp
function svm_ep:player/update_slot



scoreboard players reset @s svm_ep.chooser_chosen

function svm_ep:player/swap_hand_items

