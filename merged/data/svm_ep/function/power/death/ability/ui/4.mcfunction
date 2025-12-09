scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_04_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" ","color":"#340136"},{"text":"M","color":"#3d0333"},{"text":"e","color":"#470530"},{"text":"m","color":"#51072e"},{"text":"e","color":"#5a0a2b"},{"text":"n","color":"#640c29"},{"text":"t","color":"#6e0e26"},{"text":"o","color":"#781124"},{"text":" ","color":"#6c0e27"},{"text":"M","color":"#610b2a"},{"text":"o","color":"#56092d"},{"text":"r","color":"#4a0630"},{"text":"i","color":"#3f0333"},{"text":" ","color":"#340136"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#120c0d"},{"text":"M","strikethrough":true,"color":"#1c1718"},{"text":"e","strikethrough":true,"color":"#272223"},{"text":"m","strikethrough":true,"color":"#322d2e"},{"text":"e","strikethrough":true,"color":"#3d3839"},{"text":"n","strikethrough":true,"color":"#484344"},{"text":"t","strikethrough":true,"color":"#534e4f"},{"text":"o","strikethrough":true,"color":"#5e595a"},{"text":" ","strikethrough":true,"color":"#514c4d"},{"text":"M","strikethrough":true,"color":"#443f40"},{"text":"o","strikethrough":true,"color":"#383233"},{"text":"r","strikethrough":true,"color":"#2b2526"},{"text":"i","strikethrough":true,"color":"#1e1819"},{"text":" ","strikethrough":true,"color":"#120c0d"},{"text":"|","color":"gray"},$(cooldown_display)]



