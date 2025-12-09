scoreboard players add teamNicknames svm_ep.gamerule 1

execute if score teamNicknames svm_ep.gamerule matches 2.. run scoreboard players set doBlocksDestroy teamNicknames 0

execute if score teamNicknames svm_ep.gamerule matches 0 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Team nickname","color":"#91FFFF"},{"text":"s are no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"OFF","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute if score teamNicknames svm_ep.gamerule matches 1 run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Team nickname","color":"#91FFFF"},{"text":"s are no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"ON","bold":true,"color":"green"},{"text":"]","color":"gray"}]
execute at @s run playsound minecraft:ui.button.click master @s

execute if score teamNicknames svm_ep.gamerule matches 0 run function svm_ep:menu/cosmetics/team_nicknames/off
execute if score teamNicknames svm_ep.gamerule matches 1 run function svm_ep:menu/cosmetics/team_nicknames/on