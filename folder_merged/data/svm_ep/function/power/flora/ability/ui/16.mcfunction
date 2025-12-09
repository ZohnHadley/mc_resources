execute as @s[scores={svm_ep.p.flora_inescapable_garden_castor=1..}] run return run function svm_ep:power/flora/ability/ui/16_special

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_16_delay
function svm_ep:system/cooldown/calculate
$execute unless score %cooldown1 svm_ep.numbers matches 1.. run return run title @s actionbar [$(mana_display),{"text":" I","color":"#268600"},{"text":"n","color":"#52991F"},{"text":"e","color":"#77A93E"},{"text":"sc","color":"#8CBC60"},{"text":"a","color":"#A2C577"},{"text":"p","color":"#BDD594"},{"text":"a","color":"#D6E5AE"},{"text":"bl","color":"#EEF6C8"},{"text":"e","color":"#D6E5AE"},{"text":" G","color":"#BDD594"},{"text":"a","color":"#A2C577"},{"text":"r","color":"#8CBC60"},{"text":"d","color":"#77A93E"},{"text":"e","color":"#52991F"},{"text":"n ","color":"#268600"},{"text":"|","color":"gray"}]
function svm_ep:power/delay
$title @s actionbar [$(mana_display),{"text":" In","strikethrough":true,"color":"#575757"},{"text":"es","strikethrough":true,"color":"#848484"},{"text":"ca","strikethrough":true,"color":"#A4A4A4"},{"text":"pabl","strikethrough":true,"color":"#C3C3C3"},{"text":"e Ga","strikethrough":true,"color":"#A4A4A4"},{"text":"rd","strikethrough":true,"color":"#848484"},{"text":"en ","strikethrough":true,"color":"#575757"},{"text":"|","color":"gray"},$(cooldown_display)]
