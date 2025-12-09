scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.non_power.ability_9993_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" F","color":"#1D0F0B"},{"text":"or","color":"#301716"},{"text":"e","color":"#442825"},{"text":"s","color":"#5C443F"},{"text":"t W","color":"#6F5B55"},{"text":"o","color":"#5C443F"},{"text":"lv","color":"#442825"},{"text":"e","color":"#301716"},{"text":"s ","color":"#1D0F0B"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" Fo","strikethrough":true,"color":"#3B3B3B"},{"text":"r","strikethrough":true,"color":"dark_gray"},{"text":"est Wo","strikethrough":true,"color":"#7E7E7E"},{"text":"l","strikethrough":true,"color":"dark_gray"},{"text":"ves ","strikethrough":true,"color":"#3B3B3B"},{"text":"|","color":"gray"},$(cooldown_display)]



