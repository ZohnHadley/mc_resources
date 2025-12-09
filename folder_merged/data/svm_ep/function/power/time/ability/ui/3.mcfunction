$title @s actionbar [$(mana_display),{"text":" T","color":"#8149E0"},{"text":"im","color":"#AE6FEC"},{"text":"e","color":"#DC9DF8"},{"text":" S","color":"#FDE1FF"},{"text":"k","color":"#F7C8FF"},{"text":"i","color":"#DC9DF8"},{"text":"p","color":"#AE6FEC"},{"text":" |","color":"gray"}]


execute as @s[scores={svm_ep.p.time_ability_03_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_03_delay
execute as @s[scores={svm_ep.p.time_ability_03_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.time_ability_03_delay=1..}] actionbar [$(mana_display),{"text":" T","strikethrough":true,"color":"#595959"},{"text":"i","strikethrough":true,"color":"#858585"},{"text":"me S","strikethrough":true,"color":"#A0A0A0"},{"text":"ki","strikethrough":true,"color":"#858585"},{"text":"p ","strikethrough":true,"color":"#595959"},{"text":"|","color":"gray"},$(cooldown_display)]
