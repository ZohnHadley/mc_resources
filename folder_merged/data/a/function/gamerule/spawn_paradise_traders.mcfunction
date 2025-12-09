scoreboard players add spawnParadiseTraders svm_ep.gamerule 1

execute if score spawnParadiseTraders svm_ep.gamerule matches 2.. run scoreboard players set spawnParadiseTraders svm_ep.gamerule 0

execute if score spawnParadiseTraders svm_ep.gamerule matches 0 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Spawning Paradise Traders ","color":"aqua"},{"text":"is","color":"#91FFFF"},{"text":" no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"OFF","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute if score spawnParadiseTraders svm_ep.gamerule matches 1 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Spawning Paradise Traders ","color":"#73FFFF"},{"text":"is","color":"#91FFFF"},{"text":" no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"ON","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute at @s run playsound minecraft:ui.button.click master @s