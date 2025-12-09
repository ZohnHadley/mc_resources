scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.gravity_ability_07_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" ","color":"#8c0a1b"},{"text":"R","color":"#9f1e2f"},{"text":"e","color":"#b23343"},{"text":"p","color":"#c54758"},{"text":"e","color":"#d85c6c"},{"text":"l","color":"#eb7080"},{"text":" ","color":"#ff8595"},{"text":"Z","color":"#e86c7c"},{"text":"o","color":"#d15364"},{"text":"n","color":"#ba3b4b"},{"text":"e","color":"#a32233"},{"text":" ","color":"#8c0a1b"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#0f0b0c"},{"text":"R","strikethrough":true,"color":"#1d191a"},{"text":"e","strikethrough":true,"color":"#2b2728"},{"text":"p","strikethrough":true,"color":"#393637"},{"text":"e","strikethrough":true,"color":"#474445"},{"text":"l","strikethrough":true,"color":"#555253"},{"text":" ","strikethrough":true,"color":"#636162"},{"text":"Z","strikethrough":true,"color":"#524f50"},{"text":"o","strikethrough":true,"color":"#413e3f"},{"text":"n","strikethrough":true,"color":"#302d2e"},{"text":"e","strikethrough":true,"color":"#1f1c1d"},{"text":" ","strikethrough":true,"color":"#0f0b0c"},{"text":"|","color":"gray"},$(cooldown_display)]



