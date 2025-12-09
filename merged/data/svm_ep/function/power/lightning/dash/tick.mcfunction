execute at @s[scores={svm_ep.using_move=97..}] run particle minecraft:dust_color_transition{from_color:[1.0f,1.0f,0.0f],to_color:[1.6f,0.0f,0.5f],scale:1.0f} ~ ~0.7 ~ 1.0 1.0 1.0 0.4 180
effect give @s[scores={svm_ep.using_move=93..}] minecraft:slowness 1 6 true
execute at @s[scores={svm_ep.using_move=92}] anchored eyes run function svm_ep:power/lightning/dash/dash
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:slow_falling 2 0 true