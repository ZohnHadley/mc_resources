scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_04_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" H","color":"#dc0067"},{"text":"e","color":"#e11470"},{"text":"a","color":"#e62879"},{"text":"l","color":"#eb3c83"},{"text":"t","color":"#f0508c"},{"text":"h","color":"#f56496"},{"text":" ","color":"#fa789f"},{"text":"S","color":"#ff8da9"},{"text":"p","color":"#ff74a1"},{"text":"r","color":"#ff5b99"},{"text":"e","color":"#ff4291"},{"text":"a","color":"#ff2989"},{"text":"d ","color":"#ff1182"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" H","strikethrough":true,"color":"#707070"},{"text":"e","strikethrough":true,"color":"#7d7d7d"},{"text":"a","strikethrough":true,"color":"#8b8b8b"},{"text":"l","strikethrough":true,"color":"#999999"},{"text":"t","strikethrough":true,"color":"#a7a7a7"},{"text":"h","strikethrough":true,"color":"#b5b5b5"},{"text":" ","strikethrough":true,"color":"#c3c3c3"},{"text":"S","strikethrough":true,"color":"#d1d1d1"},{"text":"p","strikethrough":true,"color":"#bdbdbd"},{"text":"r","strikethrough":true,"color":"#aaaaaa"},{"text":"e","strikethrough":true,"color":"#969696"},{"text":"a","strikethrough":true,"color":"#838383"},{"text":"d ","strikethrough":true,"color":"#707070"},{"text":"|","color":"gray"},$(cooldown_display)]



