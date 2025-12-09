$title @s actionbar [$(mana_display),{"text":" Ti","color":"#FF57A6"},{"text":"m","color":"#FF7FBF"},{"text":"e","color":"#FFA4CA"},{"text":"s","color":"#FFBADE"},{"text":"t","color":"#FFA4CA"},{"text":"a","color":"#FF7FBF"},{"text":"mp ","color":"#FF57A6"},{"text":"|","color":"gray"}]


execute as @s[scores={svm_ep.p.time_ability_04_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_04_delay
execute as @s[scores={svm_ep.p.time_ability_04_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.time_ability_04_delay=1..}] actionbar [$(mana_display),{"text":" T","strikethrough":true,"color":"#626262"},{"text":"im","strikethrough":true,"color":"#808080"},{"text":"esta","strikethrough":true,"color":"#A7A7A7"},{"text":"m","strikethrough":true,"color":"#808080"},{"text":"p ","strikethrough":true,"color":"#626262"},{"text":"|","color":"gray"},$(cooldown_display)]
