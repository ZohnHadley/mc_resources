scoreboard players reset @s svm_ep.switch_hotbar
scoreboard players enable @s svm_ep.switch_hotbar

execute store result storage svm_ep:ability_hotbar input.slot int 1 run scoreboard players get @s svm_ep.selected_hotbar
execute store result storage svm_ep:ability_hotbar input.id int 1.0 run scoreboard players get @s svm_ep.entity_id
function svm_ep:menu/hotbar/save_setup with storage svm_ep:ability_hotbar input


scoreboard players add @s svm_ep.selected_hotbar 1
scoreboard players set @s[scores={svm_ep.selected_hotbar=2..}] svm_ep.selected_hotbar 0


execute store result storage svm_ep:ability_hotbar input.slot int 1 run scoreboard players get @s svm_ep.selected_hotbar
execute store result storage svm_ep:ability_hotbar input.id int 1.0 run scoreboard players get @s svm_ep.entity_id
function svm_ep:menu/hotbar/load_setup with storage svm_ep:ability_hotbar input

function svm_ep:player/update_slot
execute at @s run playsound minecraft:ui.stonecutter.select_recipe master @s