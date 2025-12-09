effect give @s[scores={svm_ep.using_move=101399}] minecraft:slowness 1 4 true
execute at @s[scores={svm_ep.using_move=101397}] run playsound minecraft:entity.breeze.inhale master @a ~ ~ ~ 1 1.3
execute at @s[scores={svm_ep.using_move=101381}] anchored eyes positioned ^ ^ ^2 run function svm_ep:items/hammer/ice/smash/hit

scoreboard players reset @s[scores={svm_ep.using_move=..101366}] svm_ep.using_move
