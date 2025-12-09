title @s actionbar ""
execute as @s[scores={svm_ep.ability_input=1}] run function svm_ep:player/ability_input/1/toggle_based_off_item


execute if score %update_ability_slots svm_ep.function matches 0 run return 0
execute store result storage svm_ep:player_data_fast slot int 1.0 run scoreboard players get @s input.selected_slot
function svm_ep:player/select_ability/general with storage svm_ep:player_data_fast

#execute as @s[scores={input.sneak_time=1..}] run function svm_ep:player/select_ability/sneak
#execute as @s[scores={input.sprint_time=1..}] run function svm_ep:player/select_ability/sprint
#execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.13 2