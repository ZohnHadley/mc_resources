scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_06_delay
function svm_ep:system/cooldown/calculate

$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" ","color":"#4f0000"},{"text":"D","color":"#5e0718"},{"text":"e","color":"#6e0f31"},{"text":"a","color":"#7e174a"},{"text":"t","color":"#8d1f62"},{"text":"h","color":"#9d277b"},{"text":" ","color":"#ad2f94"},{"text":"C","color":"#bd37ad"},{"text":"o","color":"#a32f9a"},{"text":"m","color":"#8a2787"},{"text":"p","color":"#702074"},{"text":"a","color":"#571861"},{"text":"s","color":"#3d114e"},{"text":"s","color":"#24093b"},{"text":" ","color":"#0b0229"},{"text":"|","color":"gray"}]

function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#100e17"},{"text":"D","strikethrough":true,"color":"#1f1a24"},{"text":"e","strikethrough":true,"color":"#2f2632"},{"text":"a","strikethrough":true,"color":"#3e3340"},{"text":"t","strikethrough":true,"color":"#4e3f4e"},{"text":"h","strikethrough":true,"color":"#5d4c5c"},{"text":" ","strikethrough":true,"color":"#6d586a"},{"text":"C","strikethrough":true,"color":"#7d6578"},{"text":"o","strikethrough":true,"color":"#6f5a6a"},{"text":"m","strikethrough":true,"color":"#62505d"},{"text":"p","strikethrough":true,"color":"#554550"},{"text":"a","strikethrough":true,"color":"#483b43"},{"text":"s","strikethrough":true,"color":"#3b3036"},{"text":"s","strikethrough":true,"color":"#2e2629"},{"text":" ","strikethrough":true,"color":"#211c1c"},{"text":"|","color":"gray"},$(cooldown_display)]



