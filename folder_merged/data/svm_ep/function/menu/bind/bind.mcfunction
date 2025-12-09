scoreboard players operation @s svm_ep.menu -= %10000 svm_ep.numbers

execute as @s[scores={svm_ep.selected_ability=9999}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"!","color":"dark_red"},{"text":"]","color":"gray"},{"text":" Seems like you have unbinded your menu! To use it or bind it again, use ","color":"red"},{"text":"/trigger svm_ep.menu","clickEvent":{"action":"suggest_command","command":"/trigger svm_ep.menu"}}]
execute as @s[scores={input.selected_slot=0}] run scoreboard players operation @s svm_ep.ability0 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=1}] run scoreboard players operation @s svm_ep.ability1 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=2}] run scoreboard players operation @s svm_ep.ability2 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=3}] run scoreboard players operation @s svm_ep.ability3 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=4}] run scoreboard players operation @s svm_ep.ability4 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=5}] run scoreboard players operation @s svm_ep.ability5 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=6}] run scoreboard players operation @s svm_ep.ability6 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=7}] run scoreboard players operation @s svm_ep.ability7 = @s svm_ep.menu
execute as @s[scores={input.selected_slot=8}] run scoreboard players operation @s svm_ep.ability8 = @s svm_ep.menu

function svm_ep:player/update_slot