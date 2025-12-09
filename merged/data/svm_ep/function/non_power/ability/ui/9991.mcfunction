#GET CD
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.non_power.ability_9991_delay
function svm_ep:system/cooldown/calculate

#NOT ON CD
$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" Ground Pull ","color":"#0210ad"},{"text":"|","color":"gray"}]

#ON CD
function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" Ground Pull ","strikethrough":true,"color":"#313131"},{"text":"|","color":"gray"},$(cooldown_display)]

