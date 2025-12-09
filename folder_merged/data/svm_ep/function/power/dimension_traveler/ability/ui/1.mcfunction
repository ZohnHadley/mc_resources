$title @s actionbar [$(mana_display),{"text":" P","color":"#FF7DFF"},{"text":"o","color":"#FF9DFF"},{"text":"r","color":"#FFBFFF"},{"text":"t","color":"#FFA4FF"},{"text":"a","color":"#FF7DFF"},{"text":"l ","color":"light_purple"},{"text":"|","color":"gray"}]

execute as @s[scores={svm_ep.p.dimension_traveler_ability_01_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.dimension_traveler_ability_01_delay
execute as @s[scores={svm_ep.p.dimension_traveler_ability_01_delay=1..}] run function svm_ep:power/delay
$title @s[scores={svm_ep.p.dimension_traveler_ability_01_delay=1..}] actionbar [$(mana_display),{"text":" P","color":"#CBCBCB"},{"text":"o","color":"#B6B6B6"},{"text":"rt","color":"#A2A2A2"},{"text":"a","color":"#B6B6B6"},{"text":"l ","color":"#CBCBCB"},{"text":"|","color":"gray"},$(cooldown_display)]
