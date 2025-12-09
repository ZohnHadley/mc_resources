scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_01_delay=1..}] svm_ep.p.dimension_traveler_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_02_delay=1..}] svm_ep.p.dimension_traveler_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_03_delay=1..}] svm_ep.p.dimension_traveler_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_04_delay=1..}] svm_ep.p.dimension_traveler_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_05_delay=1..}] svm_ep.p.dimension_traveler_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_06_delay=1..}] svm_ep.p.dimension_traveler_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_07_delay=1..}] svm_ep.p.dimension_traveler_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_08_delay=1..}] svm_ep.p.dimension_traveler_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_09_delay=1..}] svm_ep.p.dimension_traveler_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.dimension_traveler_ability_10_delay=1..}] svm_ep.p.dimension_traveler_ability_10_delay 1





execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/dimension_traveler/quick_portal/start_tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/dimension_traveler/gate/tick
execute at @s[scores={svm_ep.using_move=201..400}] run function svm_ep:power/dimension_traveler/hop/tick
execute at @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/dimension_traveler/hop/tick2
scoreboard players reset @s[scores={svm_ep.using_move=345}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=455}] svm_ep.using_move

execute at @s if dimension svm_ep:pocket run function svm_ep:power/dimension_traveler/in_pocket_dimension

#scoreboard players reset @s[scores={svm_ep.using_move=290}] svm_ep.using_move