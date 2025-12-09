scoreboard players set %entity_count svm_ep.numbers 0

tag @s add executor
execute at @s as @e[distance=..100,type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] if score @s svm_ep.p.healing_marked_by = @n[tag=executor] svm_ep.entity_id run scoreboard players add %entity_count svm_ep.numbers 1
tag @s remove executor

$title @s actionbar [$(mana_display),{"text":" M","color":"#ff003e"},{"text":"a","color":"#ff2c5f"},{"text":"r","color":"#ff5981"},{"text":"k","color":"#ff85a2"},{"text":"i","color":"#ffb2c4"},{"text":"n","color":"#ff5981"},{"text":"g ","color":"#ff003e"},{"text":"| ","color":"gray"},{"score":{"name":"%entity_count","objective":"svm_ep.numbers"},"color":"red"}]


