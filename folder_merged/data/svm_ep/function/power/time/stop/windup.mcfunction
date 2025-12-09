execute as @s[scores={svm_ep.using_move=..702}] run function svm_ep:power/time/stop/activate
scoreboard players reset @s[scores={svm_ep.using_move=..702}] svm_ep.using_move
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_stop_charge
function svm_ep:power/delay
title @s times 0 2 4
title @s title [{"text":" "}]
title @s subtitle ["",{"text":"| ","color":"#989898"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":" | ","color":"#989898"}]
