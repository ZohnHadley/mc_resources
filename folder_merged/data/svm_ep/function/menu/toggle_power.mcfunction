scoreboard players add @s svm_ep.p.silenced 1
execute at @s[scores={svm_ep.p.silenced=1}] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 0
execute at @s[scores={svm_ep.p.silenced=2}] run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 1.2
execute as @s[scores={svm_ep.p.silenced=2..}] run scoreboard players reset @s svm_ep.p.silenced

execute if entity @s[scores={svm_ep.p.silenced=1}] run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Po","color":"aqua"},{"text":"wers ","color":"#73FFFF"},{"text":"ar","color":"#91FFFF"},{"text":"e no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"OFF","bold":true,"color":"red"},{"text":"]","color":"gray"}]
execute unless entity @s[scores={svm_ep.p.silenced=1}] run tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Po","color":"aqua"},{"text":"wers ","color":"#73FFFF"},{"text":"ar","color":"#91FFFF"},{"text":"e no","color":"#73FFFF"},{"text":"w","color":"aqua"},{"text":": [","color":"gray"},{"text":"ON","bold":true,"color":"green"},{"text":"]","color":"gray"}]
scoreboard players reset @s svm_ep.toggle_power
scoreboard players enable @s svm_ep.toggle_power