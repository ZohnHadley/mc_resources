execute as @s[scores={svm_ep.selected_ability=6}] run return run function svm_ep:power/fire/ray/start
execute as @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.using_move=101..200}] run return 0




execute store result score @s svm_ep.numbers run random value 1..5

scoreboard players remove @s svm_ep.p.fire_barrage_bullets 1
title @s title ["",{"text":"|","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.fire_barrage_bullets"},"color":"#F86900"},{"text":"|","bold":true,"color":"gray"}]

execute as @s[scores={svm_ep.numbers=1}] anchored eyes positioned ^ ^0.75 ^-0.75 run function svm_ep:power/fire/barrage/spawn
execute as @s[scores={svm_ep.numbers=2}] anchored eyes positioned ^1.2375 ^0.1875 ^-0.75 run function svm_ep:power/fire/barrage/spawn
execute as @s[scores={svm_ep.numbers=3}] anchored eyes positioned ^0.8625 ^-0.9375 ^-0.75 run function svm_ep:power/fire/barrage/spawn
execute as @s[scores={svm_ep.numbers=4}] anchored eyes positioned ^-1.2375 ^0.1875 ^-0.75 run function svm_ep:power/fire/barrage/spawn
execute as @s[scores={svm_ep.numbers=5}] anchored eyes positioned ^-0.8625 ^-0.9375 ^-0.75 run function svm_ep:power/fire/barrage/spawn

