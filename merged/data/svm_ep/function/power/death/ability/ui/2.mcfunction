scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_02_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" L","color":"#2b0906"},{"text":"i","color":"#471814"},{"text":"f","color":"#632722"},{"text":"e","color":"#7f3730"},{"text":" ","color":"#9b463e"},{"text":"D","color":"#b8564d"},{"text":"r","color":"#94423b"},{"text":"a","color":"#712f29"},{"text":"i","color":"#4e1c17"},{"text":"n ","color":"#2b0906"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#290906"},{"text":"L","strikethrough":true,"color":"#2f0c09"},{"text":"i","strikethrough":true,"color":"#350f0c"},{"text":"f","strikethrough":true,"color":"#3b120f"},{"text":"e","strikethrough":true,"color":"#411512"},{"text":" ","strikethrough":true,"color":"#471815"},{"text":"D","strikethrough":true,"color":"#4d1c18"},{"text":"r","strikethrough":true,"color":"#451814"},{"text":"a","strikethrough":true,"color":"#3e1410"},{"text":"i","strikethrough":true,"color":"#37100d"},{"text":"n","strikethrough":true,"color":"#300c09"},{"text":" ","strikethrough":true,"color":"#290906"},{"text":"|","color":"gray"},$(cooldown_display)]



