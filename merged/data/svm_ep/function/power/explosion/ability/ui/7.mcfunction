scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.explosion_ability_07_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" ","color":"#c92200"},{"text":"R","color":"#d24111"},{"text":"e","color":"#db6123"},{"text":"-","color":"#e48035"},{"text":"E","color":"#eda047"},{"text":"x","color":"#f6bf59"},{"text":"p","color":"#ffdf6b"},{"text":"l","color":"#f4b955"},{"text":"o","color":"#e99340"},{"text":"d","color":"#de6d2a"},{"text":"e","color":"#d34715"},{"text":" ","color":"#c92200"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#4f4f4f"},{"text":"R","strikethrough":true,"color":"#606060"},{"text":"e","strikethrough":true,"color":"#727272"},{"text":"-","strikethrough":true,"color":"#848484"},{"text":"E","strikethrough":true,"color":"#969696"},{"text":"x","strikethrough":true,"color":"#a8a8a8"},{"text":"p","strikethrough":true,"color":"#bababa"},{"text":"l","strikethrough":true,"color":"#a5a5a5"},{"text":"o","strikethrough":true,"color":"#909090"},{"text":"d","strikethrough":true,"color":"#7b7b7b"},{"text":"e","strikethrough":true,"color":"#666666"},{"text":" ","strikethrough":true,"color":"#525252"},{"text":"|","color":"gray"},$(cooldown_display)]



