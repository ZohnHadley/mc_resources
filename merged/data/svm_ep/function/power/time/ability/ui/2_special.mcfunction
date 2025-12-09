

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.e.accelerated
function svm_ep:power/delay
scoreboard players operation @s svm_ep.tick_acceleration = %acceleration_speed svm_ep.world_settings
scoreboard players operation @s svm_ep.tick_acceleration -= %100 svm_ep.numbers
scoreboard players operation @s svm_ep.tick_acceleration *= @s svm_ep.p.time_accelerated_level
scoreboard players operation @s svm_ep.tick_acceleration += %100 svm_ep.numbers

$title @s actionbar [$(mana_display),{"text":" A","color":"#ADFFE7"},{"text":"c","color":"#C6FFF9"},{"text":"c","color":"#DCFFFF"},{"text":"e","color":"#F1FFFF"},{"text":"le","color":"#F7FFFF"},{"text":"r","color":"#F1FFFF"},{"text":"a","color":"#DCFFFF"},{"text":"t","color":"#C6FFF9"},{"text":"e ","color":"#ADFFE7"},{"text":"|","color":"gray"},{"text":" ","color":"gray"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"aqua"},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.tick_acceleration"},"color":"#abf7ff"},{"text":"%","color":"#abf7ff"}]
