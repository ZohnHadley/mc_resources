$title @s actionbar [$(mana_display),{"text":" A","color":"#ADFFE7"},{"text":"c","color":"#C6FFF9"},{"text":"c","color":"#DCFFFF"},{"text":"e","color":"#F1FFFF"},{"text":"le","color":"#F7FFFF"},{"text":"r","color":"#F1FFFF"},{"text":"a","color":"#DCFFFF"},{"text":"t","color":"#C6FFF9"},{"text":"e ","color":"#ADFFE7"},{"text":"|","color":"gray"}]
execute as @s[scores={svm_ep.e.accelerated=1..}] unless entity @s[scores={svm_ep.p.time_ability_02_delay=1..}] run function svm_ep:power/time/ability/ui/2_special with storage svm_ep:mana_display input

execute as @s[scores={svm_ep.p.time_ability_02_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_02_delay
execute as @s[scores={svm_ep.p.time_ability_02_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.time_ability_02_delay=1..}] actionbar [$(mana_display),{"text":" A","strikethrough":true,"color":"#4C4C4C"},{"text":"c","strikethrough":true,"color":"#696969"},{"text":"celera","strikethrough":true,"color":"#989898"},{"text":"t","strikethrough":true,"color":"#696969"},{"text":"e ","strikethrough":true,"color":"#4C4C4C"},{"text":"|","color":"gray"},$(cooldown_display)]
