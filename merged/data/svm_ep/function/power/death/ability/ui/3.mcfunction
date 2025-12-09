scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_03_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" C","color":"#911409"},{"text":"l","color":"#a32015"},{"text":"e","color":"#b52d21"},{"text":"a","color":"#c83a2d"},{"text":"v","color":"#da4639"},{"text":"i","color":"#ec5345"},{"text":"n","color":"#ff6052"},{"text":"g","color":"#e95043"},{"text":" ","color":"#d34134"},{"text":"C","color":"#bd3226"},{"text":"u","color":"#a72317"},{"text":"t ","color":"#911409"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#170c0b"},{"text":"C","strikethrough":true,"color":"#1b0e0d"},{"text":"l","strikethrough":true,"color":"#201110"},{"text":"e","strikethrough":true,"color":"#251413"},{"text":"a","strikethrough":true,"color":"#291715"},{"text":"v","strikethrough":true,"color":"#2e1a18"},{"text":"i","strikethrough":true,"color":"#331d1b"},{"text":"n","strikethrough":true,"color":"#38201e"},{"text":"g","strikethrough":true,"color":"#321c1a"},{"text":" ","strikethrough":true,"color":"#2d1917"},{"text":"C","strikethrough":true,"color":"#271614"},{"text":"u","strikethrough":true,"color":"#221211"},{"text":"t","strikethrough":true,"color":"#1c0f0e"},{"text":" ","strikethrough":true,"color":"#170c0b"},{"text":"|","color":"gray"},$(cooldown_display)]



