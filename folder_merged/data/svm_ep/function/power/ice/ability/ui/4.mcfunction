$title @s actionbar [$(mana_display),{"text":" I","color":"#9DFFFF"},{"text":"c","color":"#78FFFF"},{"text":"e S","color":"aqua"},{"text":"l","color":"#81FFFF"},{"text":"i","color":"#AFFFFF"},{"text":"d","color":"#81FFFF"},{"text":"e ","color":"aqua"},{"text":"|"}]
execute as @s[scores={svm_ep.p.ice_ability_04_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.ice_ability_04_delay
execute as @s[scores={svm_ep.p.ice_ability_04_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.ice_ability_04_delay=1..}] actionbar [$(mana_display),{"text":" I","color":"gray"},{"text":"c","color":"#BCBCBC"},{"text":"e Sli","color":"#D7D7D7"},{"text":"d","color":"#BCBCBC"},{"text":"e ","color":"gray"},{"text":"|"},$(cooldown_display)]
