title @s subtitle ["",{"text":"|","color":"gray"},{"text":" P","color":"red"},{"text":"ut i","color":"#FF7072"},{"text":"n of","color":"#FF7D7F"},{"text":"f","color":"#FF9698"},{"text":"han","color":"#FFA9AA"},{"text":"d t","color":"#FF9698"},{"text":"o se","color":"#FF7D7F"},{"text":"lec","color":"#FF7072"},{"text":"t ","color":"red"},{"text":"|","color":"gray"}]
title @s[scores={svm_ep.chooser_chosen=1..}] times 0 2 4

execute store result storage svm_ep:power temp.selected int 1 run scoreboard players get @s svm_ep.chooser_chosen
function svm_ep:items/chooser/held_macro with storage svm_ep:power temp
