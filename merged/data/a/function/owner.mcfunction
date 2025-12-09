scoreboard players add @s svm_ep.player_permissions 1

execute if score @s svm_ep.player_permissions matches 2.. run scoreboard players set @s svm_ep.player_permissions 0

execute if score @s svm_ep.player_permissions matches 0 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Ad","color":"aqua"},{"text":"min ","color":"#73FFFF"},{"text":"Mode","color":"#91FFFF"},{"text":" is no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"OFF","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute if score @s svm_ep.player_permissions matches 1 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Ad","color":"aqua"},{"text":"min ","color":"#73FFFF"},{"text":"Mode","color":"#91FFFF"},{"text":" is no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"ON","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute at @s run playsound minecraft:ui.button.click master @s