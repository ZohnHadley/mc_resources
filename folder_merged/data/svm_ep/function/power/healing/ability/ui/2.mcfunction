scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_02_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" R","color":"#ff1773"},{"text":"e","color":"#ff277c"},{"text":"g","color":"#ff3786"},{"text":"e","color":"#ff4790"},{"text":"n","color":"#ff5799"},{"text":"e","color":"#ff67a3"},{"text":"r","color":"#ff77ad"},{"text":"a","color":"#ff87b6"},{"text":"t","color":"#ff97c0"},{"text":"i","color":"#ffa7ca"},{"text":"o","color":"#ffb8d4"},{"text":"n","color":"#ffa3c7"},{"text":"a","color":"#ff8fbb"},{"text":"l","color":"#ff7baf"},{"text":" ","color":"#ff67a3"},{"text":"A","color":"#ff5397"},{"text":"u","color":"#ff3f8b"},{"text":"r","color":"#ff2b7f"},{"text":"a","color":"#ff1773"},{"text":" |","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" R","strikethrough":true,"color":"#474747"},{"text":"e","strikethrough":true,"color":"#525252"},{"text":"g","strikethrough":true,"color":"#5d5d5d"},{"text":"e","strikethrough":true,"color":"#686868"},{"text":"n","strikethrough":true,"color":"#747474"},{"text":"e","strikethrough":true,"color":"#7f7f7f"},{"text":"r","strikethrough":true,"color":"#8a8a8a"},{"text":"a","strikethrough":true,"color":"#969696"},{"text":"t","strikethrough":true,"color":"#a1a1a1"},{"text":"i","strikethrough":true,"color":"#acacac"},{"text":"o","strikethrough":true,"color":"#b8b8b8"},{"text":"n","strikethrough":true,"color":"#a9a9a9"},{"text":"a","strikethrough":true,"color":"#9b9b9b"},{"text":"l","strikethrough":true,"color":"#8d8d8d"},{"text":" ","strikethrough":true,"color":"#7f7f7f"},{"text":"A","strikethrough":true,"color":"#717171"},{"text":"u","strikethrough":true,"color":"#636363"},{"text":"r","strikethrough":true,"color":"#555555"},{"text":"a ","strikethrough":true,"color":"#474747"},{"text":"|","color":"gray"},$(cooldown_display)]



