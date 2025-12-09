$title @s actionbar [$(mana_display),{"text":" T","color":"dark_red"},{"text":"i","color":"#C70000"},{"text":"m","color":"#F32828"},{"text":"e ","color":"#FF5052"},{"text":"S","color":"#FF8283"},{"text":"t","color":"#FF5052"},{"text":"o","color":"#F32828"},{"text":"p ","color":"#C70000"},{"text":"|","color":"gray"}]


execute as @s[scores={svm_ep.p.time_ability_01_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_01_delay
execute as @s[scores={svm_ep.p.time_ability_01_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.time_ability_01_delay=1..}] actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#4C4C4C"},{"text":"Tim","strikethrough":true,"color":"#727272"},{"text":"e ","strikethrough":true,"color":"#9D9D9D"},{"text":"St","strikethrough":true,"color":"#BABABA"},{"text":"o","strikethrough":true,"color":"#9D9D9D"},{"text":"p","strikethrough":true,"color":"#727272"},{"text":" ","strikethrough":true,"color":"#4C4C4C"},{"text":"|","color":"gray"},$(cooldown_display)]
