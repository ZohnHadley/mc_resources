
execute if score %cooldown1 svm_ep.numbers matches ..0 run scoreboard players set %cooldown1 svm_ep.numbers 0
execute if score %cooldown1 svm_ep.numbers matches ..0 run scoreboard players set %cooldown2 svm_ep.numbers 0
execute unless score %cooldown1 svm_ep.numbers matches ..0 run function svm_ep:power/delay

$title @s actionbar [$(mana_display),$(ability_name),{"text":"| ","color":"#858585"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":" | ","color":"#858585"},{"text":"⚔","color":"#fcba03"}]

