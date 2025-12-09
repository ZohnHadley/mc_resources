execute as @s[scores={svm_ep.e.haunted=1..}] run return run function svm_ep:power/death/memento_mori/apply_on_haunted
effect give @s minecraft:slowness 2 4 true
effect give @s minecraft:darkness 3 1 true
execute at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0
execute as @a[tag=svm_ep.death_user,distance=..200] run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 2 0 1
scoreboard players set @s svm_ep.e.haunted 14400
scoreboard players set @s svm_ep.effect 1
tag @s remove hitby
title @s times 20 100 20
title @s title {"text":"You're now being haunted","color":"red"}
title @s subtitle {"text":"Stay away... from death...","color":"dark_red"}
