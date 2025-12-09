scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_01_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" H","color":"#FF2756"},{"text":"e","color":"#FF5487"},{"text":"a","color":"#FF88B2"},{"text":"l ","color":"#FF5487"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" H","color":"#787878"},{"text":"e","color":"#999999"},{"text":"a","color":"#C1C1C1"},{"text":"l ","color":"#999999"},{"text":"|","color":"gray"},$(cooldown_display)]



