scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_01_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" S","color":"#3c0707"},{"text":"u","color":"#450909"},{"text":"m","color":"#4f0b0b"},{"text":"m","color":"#580e0e"},{"text":"o","color":"#621010"},{"text":"n","color":"#6b1212"},{"text":" ","color":"#751515"},{"text":"S","color":"#6b1212"},{"text":"c","color":"#621010"},{"text":"y","color":"#580e0e"},{"text":"t","color":"#4f0b0b"},{"text":"h","color":"#450909"},{"text":"e ","color":"#3c0707"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" S","strikethrough":true,"color":"#140606"},{"text":"u","strikethrough":true,"color":"#1a0b0b"},{"text":"m","strikethrough":true,"color":"#211111"},{"text":"m","strikethrough":true,"color":"#271717"},{"text":"o","strikethrough":true,"color":"#2e1c1c"},{"text":"n","strikethrough":true,"color":"#342222"},{"text":" ","strikethrough":true,"color":"#3b2828"},{"text":"S","strikethrough":true,"color":"#422e2e"},{"text":"c","strikethrough":true,"color":"#382626"},{"text":"y","strikethrough":true,"color":"#2f1e1e"},{"text":"t","strikethrough":true,"color":"#261616"},{"text":"h","strikethrough":true,"color":"#1d0e0e"},{"text":"e ","strikethrough":true,"color":"#140606"},{"text":"|","color":"gray"},$(cooldown_display)]



