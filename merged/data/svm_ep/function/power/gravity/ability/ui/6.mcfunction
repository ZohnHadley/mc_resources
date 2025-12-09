$title @s actionbar [$(mana_display),{"text":" R","color":"#8C14D1"},{"text":"e","color":"#9B3EE6"},{"text":"ve","color":"#D696FF"},{"text":"r","color":"#9B3EE6"},{"text":"t ","color":"#8C14D1"},{"text":"|","color":"gray"}]
execute as @s[scores={svm_ep.p.gravity_ability_06_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.gravity_ability_06_delay
execute as @s[scores={svm_ep.p.gravity_ability_06_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.gravity_ability_06_delay=1..}] actionbar [$(mana_display),{"text":" R","strikethrough":true,"color":"#7B7B7B"},{"text":"eve","strikethrough":true,"color":"#B6B6B6"},{"text":"rt ","strikethrough":true,"color":"#7B7B7B"},{"text":"|","color":"gray"},$(cooldown_display)]
