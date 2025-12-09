scoreboard players remove @s[scores={svm_ep.p.fire_ability_01_delay=1..}] svm_ep.p.fire_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_02_delay=1..}] svm_ep.p.fire_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_03_delay=1..}] svm_ep.p.fire_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_04_delay=1..}] svm_ep.p.fire_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_05_delay=1..}] svm_ep.p.fire_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_06_delay=1..}] svm_ep.p.fire_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_07_delay=1..}] svm_ep.p.fire_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_08_delay=1..}] svm_ep.p.fire_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_09_delay=1..}] svm_ep.p.fire_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.fire_ability_10_delay=1..}] svm_ep.p.fire_ability_10_delay 1



execute as @s[scores={svm_ep.p.fire_barrage_bullets=1..}] run function svm_ep:power/fire/barrage/tick
execute as @s[scores={svm_ep.p.fire_arms=1..}] run function svm_ep:power/fire/arms/tick


execute unless entity @s[scores={svm_ep.using_move=1..}] run return 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:5}}}} at @s run function svm_ep:power/fire/speed_trail


execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/fire/barrage/start_tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/fire/extinguish/tick
execute as @s[scores={svm_ep.using_move=301..500}] run function svm_ep:power/fire/ray/start_tick
execute as @s[scores={svm_ep.using_move=501..700}] run function svm_ep:power/fire/blaze/tick
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/fire/leap/tick
execute as @s[scores={svm_ep.using_move=801..900}] run function svm_ep:power/fire/arrow/tick
execute as @s[scores={svm_ep.using_move=901..1000}] run function svm_ep:power/fire/flame/tick


#scoreboard players reset @s[scores={svm_ep.using_move=20}] svm_ep.using_move