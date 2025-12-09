scoreboard players remove @s[scores={svm_ep.p.ice_ability_01_delay=1..}] svm_ep.p.ice_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_02_delay=1..}] svm_ep.p.ice_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_03_delay=1..}] svm_ep.p.ice_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_04_delay=1..}] svm_ep.p.ice_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_05_delay=1..}] svm_ep.p.ice_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_06_delay=1..}] svm_ep.p.ice_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_07_delay=1..}] svm_ep.p.ice_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_08_delay=1..}] svm_ep.p.ice_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_09_delay=1..}] svm_ep.p.ice_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.ice_ability_10_delay=1..}] svm_ep.p.ice_ability_10_delay 1





execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/ice/berg/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/ice/creation/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/ice/shatter/tick
execute as @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/ice/launch/tick
execute as @s[scores={svm_ep.using_move=501..600}] run function svm_ep:power/ice/tongue/tick
execute as @s[scores={svm_ep.p.ice_slide=1..}] run function svm_ep:power/ice/slide/tick
execute as @s[scores={svm_ep.p.ice_freeze=1..}] run function svm_ep:power/ice/freeze/tick


scoreboard players reset @s[scores={svm_ep.using_move=290}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=180}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=68}] svm_ep.using_move