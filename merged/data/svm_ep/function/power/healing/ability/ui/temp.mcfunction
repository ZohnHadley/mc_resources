scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_01_delay
function svm_ep:system/cooldown/calculate

#$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),,{"text":"|","color":"gray"}]

function svm_ep:power/delay
#$title @s actionbar [$(mana_display),,{"text":"|","color":"gray"},$(cooldown_display)]



