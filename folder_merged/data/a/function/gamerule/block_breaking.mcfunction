scoreboard players add doBlocksDestroy svm_ep.gamerule 1

execute if score doBlocksDestroy svm_ep.gamerule matches 2.. run scoreboard players set doBlocksDestroy svm_ep.gamerule 0

execute if score doBlocksDestroy svm_ep.gamerule matches 0 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"B","color":"aqua"},{"text":"reaking ","color":"#73FFFF"},{"text":"Block","color":"#91FFFF"},{"text":"s is no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"OFF","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute if score doBlocksDestroy svm_ep.gamerule matches 1 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"B","color":"aqua"},{"text":"reaking ","color":"#73FFFF"},{"text":"Block","color":"#91FFFF"},{"text":"s is no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"ON","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute at @s run playsound minecraft:ui.button.click master @s