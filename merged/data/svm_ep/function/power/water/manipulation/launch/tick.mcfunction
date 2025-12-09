#scoreboard players add @s svm_ep.shaking 1
scoreboard players add @s svm_ep.mana_drain 150
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:splash ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:bubble_pop ~ ~ ~ 0.1 0.1 0.1 0.01 5
effect give @s minecraft:slowness 1 3 true

scoreboard players reset @s[scores={svm_ep.p.water_manipulation_tick=100..}] svm_ep.using_move
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/water/manipulation/launch/launch