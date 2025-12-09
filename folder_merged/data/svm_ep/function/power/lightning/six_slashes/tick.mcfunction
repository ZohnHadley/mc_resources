execute unless entity @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] run scoreboard players reset @s[scores={svm_ep.using_move=176}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=172}] svm_ep.using_move

execute at @s[scores={svm_ep.using_move=194..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1 1 1 0.4 180
effect give @s[scores={svm_ep.using_move=189..}] minecraft:slowness 1 6 true
execute at @s[scores={svm_ep.using_move=188}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=186}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=184}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=182}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=180}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=178}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=176}] anchored eyes run function svm_ep:power/lightning/dash/dash
execute at @s[scores={svm_ep.using_move=174}] anchored eyes run function svm_ep:power/lightning/dash/dash
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:slow_falling 2 0 true

execute at @s run tp @s[scores={svm_ep.using_move=..186}] ~ ~ ~ ~75 ~

