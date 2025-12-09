#item replace entity @s[scores={svm_ep.lifetime=-30}] container.0 with minecraft:white_stained_glass
#item replace entity @s[scores={svm_ep.lifetime=-60}] container.0 with minecraft:lime_stained_glass
#item replace entity @s[scores={svm_ep.lifetime=-70}] container.0 with minecraft:green_stained_glass
#item replace entity @s[scores={svm_ep.lifetime=-140}] container.0 with minecraft:azalea_leaves


execute as @s[tag=!svm_ep.first_tick,tag=!svm_ep.ticked] run function svm_ep:power/flora/inescapable_garden/bush/setup2

tag @s remove svm_ep.first_tick