effect clear @s[scores={svm_ep.using_move=292}] minecraft:levitation
effect give @s[scores={svm_ep.using_move=292}] minecraft:levitation 1 2 true
effect clear @s[scores={svm_ep.using_move=275}] minecraft:levitation

execute at @s[scores={svm_ep.using_move=293..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[2.4f,0.0f,0.5f],scale:1f} ~ ~2.7 ~ 1 2 1 0.4 20

effect clear @s[scores={svm_ep.using_move=275}] minecraft:slowness

execute at @s[scores={svm_ep.using_move=285}] run function svm_ep:power/lightning/lightning_place/activate
