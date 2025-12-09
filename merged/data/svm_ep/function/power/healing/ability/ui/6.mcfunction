scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_06_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" I","color":"#d4002f"},{"text":"m","color":"#cd2a50"},{"text":"m","color":"#c75572"},{"text":"o","color":"#c17f93"},{"text":"r","color":"#bbaab5"},{"text":"t","color":"#b5d4d6"},{"text":"a","color":"#affff8"},{"text":"l","color":"#b8bfc5"},{"text":"i","color":"#c17f93"},{"text":"t","color":"#ca3f61"},{"text":"y ","color":"#d4002f"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
scoreboard players operation healing_left svm_ep.numbers = @s svm_ep.p.healing_immortality
scoreboard players operation healing_left svm_ep.numbers /= %20 svm_ep.numbers

$execute as @s[scores={svm_ep.p.healing_immortality=1..}] run return run title @s actionbar [$(mana_display),{"text":" I","strikethrough":true,"color":"#606060"},{"text":"m","strikethrough":true,"color":"#696969"},{"text":"m","strikethrough":true,"color":"#737373"},{"text":"o","strikethrough":true,"color":"#7d7d7d"},{"text":"r","strikethrough":true,"color":"#878787"},{"text":"t","strikethrough":true,"color":"#919191"},{"text":"a","strikethrough":true,"color":"#9b9b9b"},{"text":"l","strikethrough":true,"color":"#8c8c8c"},{"text":"i","strikethrough":true,"color":"#7d7d7d"},{"text":"t","strikethrough":true,"color":"#6e6e6e"},{"text":"y ","strikethrough":true,"color":"#606060"},{"text":"|","color":"gray"},$(cooldown_display),{"text":" | ","color":"gold"},{"score":{"name":"healing_left","objective":"svm_ep.numbers"},"color":"#F80049"},{"text":" |","color":"gold"}]
$title @s actionbar [$(mana_display),{"text":" I","strikethrough":true,"color":"#606060"},{"text":"m","strikethrough":true,"color":"#696969"},{"text":"m","strikethrough":true,"color":"#737373"},{"text":"o","strikethrough":true,"color":"#7d7d7d"},{"text":"r","strikethrough":true,"color":"#878787"},{"text":"t","strikethrough":true,"color":"#919191"},{"text":"a","strikethrough":true,"color":"#9b9b9b"},{"text":"l","strikethrough":true,"color":"#8c8c8c"},{"text":"i","strikethrough":true,"color":"#7d7d7d"},{"text":"t","strikethrough":true,"color":"#6e6e6e"},{"text":"y ","strikethrough":true,"color":"#606060"},{"text":"|","color":"gray"},$(cooldown_display)]



