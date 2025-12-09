execute as @s[scores={svm_ep.using_move=2170}] at @s run function svm_ep:power/flora/inescapable_garden/open
execute at @s[scores={svm_ep.using_move=2174}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..100] ~ ~ ~ 1 0 1
scoreboard players reset @s[scores={svm_ep.using_move=2165}] svm_ep.using_move
