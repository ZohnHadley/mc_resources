tag @s add executor
execute at @s[scores={svm_ep.using_move=567}] run effect give @s minecraft:slowness 1 6 true

execute at @s[scores={svm_ep.using_move=555}] anchored feet rotated ~ 0 positioned ^ ^ ^0.9 positioned ~ ~0.25 ~ summon marker run function svm_ep:power/ice/tongue/shoot

scoreboard players reset @s[scores={svm_ep.using_move=550}] svm_ep.using_move
tag @s remove executor
