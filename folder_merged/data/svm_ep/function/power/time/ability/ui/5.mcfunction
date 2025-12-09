$title @s actionbar [$(mana_display),{"text":" R","color":"#A330FF"},{"text":"e","color":"#C053FF"},{"text":"w","color":"#DE82FF"},{"text":"i","color":"#F6B1FF"},{"text":"n","color":"#DE82FF"},{"text":"d ","color":"#C053FF"},{"text":"|","color":"gray"}]


execute as @s[scores={svm_ep.p.time_ability_05_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_05_delay
execute as @s[scores={svm_ep.p.time_ability_05_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.time_ability_05_delay=1..}] actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#434343"},{"text":"R","strikethrough":true,"color":"#5C5C5C"},{"text":"ewi","strikethrough":true,"color":"#6D6D6D"},{"text":"n","strikethrough":true,"color":"#5C5C5C"},{"text":"d ","strikethrough":true,"color":"#434343"},{"text":"|","color":"gray"},$(cooldown_display)]
