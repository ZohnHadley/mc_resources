tag @s add executor
execute at @s[scores={svm_ep.using_move=1667}] run effect give @s minecraft:slowness 1 6 true

execute at @s[scores={svm_ep.using_move=1655}] anchored feet positioned ^ ^ ^1.6 positioned ~ ~0.5 ~ summon marker run function svm_ep:power/flora/wooden_branch/shoot
#execute at @s[scores={svm_ep.using_move=1655}] if biome ~ ~ ~ #svm_ep:unlocks_climate/dark_oak anchored eyes positioned ^2.7 ^ ^1.1 summon marker run function svm_ep:power/flora/wooden_branch/shoot
#execute at @s[scores={svm_ep.using_move=1655}] if biome ~ ~ ~ #svm_ep:unlocks_climate/dark_oak anchored eyes positioned ^-2.7 ^ ^1.1 summon marker run function svm_ep:power/flora/wooden_branch/shoot

scoreboard players reset @s[scores={svm_ep.using_move=1650}] svm_ep.using_move
tag @s remove executor
