scoreboard players reset @s svm_ep.using_move
execute if predicate [{condition:"minecraft:weather_check",raining:1b},{condition:"minecraft:location_check",predicate:{can_see_sky:1b}}] as @s[scores={svm_ep.p.water_manipulation_tick=..3}] run function svm_ep:power/water/manipulation/in_water/launch
