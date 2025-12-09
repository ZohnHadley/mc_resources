execute at @s[scores={svm_ep.using_move=..400}] run effect give @e[distance=..40] minecraft:slowness 1 0 true
execute at @s[scores={svm_ep.using_move=..380}] run effect give @e[distance=..40] minecraft:slowness 1 1 true
execute at @s[scores={svm_ep.using_move=..365}] run effect give @e[distance=..40] minecraft:slowness 1 2 true
execute at @s[scores={svm_ep.using_move=..350}] run effect give @e[distance=..40] minecraft:slowness 1 3 true
execute at @s[scores={svm_ep.using_move=..335}] run effect give @e[distance=..40] minecraft:slowness 1 4 true
execute at @s[scores={svm_ep.using_move=..320}] run effect give @e[distance=..40] minecraft:slowness 1 5 true
execute at @s[scores={svm_ep.using_move=..305}] run effect give @e[distance=..40] minecraft:slowness 1 6 true
execute at @s[scores={svm_ep.using_move=..380}] as @a[distance=1..50] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.4 ~ 7 0.5 7 0.05 100 force @s
execute at @s[scores={svm_ep.using_move=..360}] as @a[distance=1..50] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.4 ~ 7 0.5 7 0.05 100 force @s
execute at @s[scores={svm_ep.using_move=..320}] as @a[distance=1..50] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.4 ~ 7 0.5 7 0.05 100 force @s

execute at @s[scores={svm_ep.using_move=320..340}] run effect give @a[distance=0.1..50] minecraft:blindness 3 0 true
execute at @s[scores={svm_ep.using_move=320}] run effect give @a[distance=..50] minecraft:nausea 3 2 true
effect give @s[scores={svm_ep.using_move=320..}] minecraft:resistance 1 3 true

scoreboard players reset @s[scores={svm_ep.using_move=..301}] svm_ep.using_move
execute at @s[scores={svm_ep.using_move=301..313}] run function svm_ep:power/flora/forestify/spawn_trees
