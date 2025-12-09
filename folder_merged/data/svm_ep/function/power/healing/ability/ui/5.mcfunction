scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_05_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" H","color":"#ff1554"},{"text":"e","color":"#ff306f"},{"text":"l","color":"#ff4c8a"},{"text":"p","color":"#ff68a5"},{"text":"i","color":"#ff83c0"},{"text":"n","color":"#ff9fdb"},{"text":"g","color":"#ffbbf7"},{"text":" ","color":"#ff99d6"},{"text":"H","color":"#ff78b5"},{"text":"a","color":"#ff5795"},{"text":"n","color":"#ff3674"},{"text":"d ","color":"#ff1554"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#5b5b5b"},{"text":"H","strikethrough":true,"color":"#656565"},{"text":"e","strikethrough":true,"color":"#6f6f6f"},{"text":"l","strikethrough":true,"color":"#7a7a7a"},{"text":"p","strikethrough":true,"color":"#848484"},{"text":"i","strikethrough":true,"color":"#8f8f8f"},{"text":"n","strikethrough":true,"color":"#999999"},{"text":"g","strikethrough":true,"color":"#a4a4a4"},{"text":" ","strikethrough":true,"color":"#959595"},{"text":"H","strikethrough":true,"color":"#868686"},{"text":"a","strikethrough":true,"color":"#787878"},{"text":"n","strikethrough":true,"color":"#696969"},{"text":"d ","strikethrough":true,"color":"#5b5b5b"},{"text":"|","color":"gray"},$(cooldown_display)]



