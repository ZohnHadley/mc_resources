scoreboard players remove @s[scores={svm_ep.p.lightning_ability_01_delay=1..}] svm_ep.p.lightning_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_02_delay=1..}] svm_ep.p.lightning_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_03_delay=1..}] svm_ep.p.lightning_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_04_delay=1..}] svm_ep.p.lightning_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_05_delay=1..}] svm_ep.p.lightning_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_06_delay=1..}] svm_ep.p.lightning_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_07_delay=1..}] svm_ep.p.lightning_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_08_delay=1..}] svm_ep.p.lightning_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_09_delay=1..}] svm_ep.p.lightning_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_10_delay=1..}] svm_ep.p.lightning_ability_10_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_11_delay=1..}] svm_ep.p.lightning_ability_11_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_12_delay=1..}] svm_ep.p.lightning_ability_12_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_13_delay=1..}] svm_ep.p.lightning_ability_13_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_14_delay=1..}] svm_ep.p.lightning_ability_14_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_15_delay=1..}] svm_ep.p.lightning_ability_15_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_16_delay=1..}] svm_ep.p.lightning_ability_16_delay 1
scoreboard players remove @s[scores={svm_ep.p.lightning_ability_17_delay=1..}] svm_ep.p.lightning_ability_17_delay 1


execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/lightning/dash/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/lightning/six_slashes/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/lightning/lightning_place/tick
execute as @s[scores={svm_ep.using_move=301..400}] run function svm_ep:power/lightning/electric_string/tick
execute as @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/lightning/punch/tick
execute as @s[scores={svm_ep.using_move=501..600}] run function svm_ep:power/lightning/sword/tick
execute as @s[scores={svm_ep.using_move=601..700}] run function svm_ep:power/lightning/awakening/tick
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/lightning/follow/tick
execute as @s[scores={svm_ep.using_move=801..900}] run function svm_ep:power/lightning/blast/tick
execute as @s[scores={svm_ep.using_move=901..1000}] run function svm_ep:power/lightning/dance/tick
execute as @s[scores={svm_ep.using_move=1001..1100}] run function svm_ep:power/lightning/god_slash/tick2
execute as @s[scores={svm_ep.using_move=1101..1200}] run function svm_ep:power/lightning/god_slash/tick
execute as @s[scores={svm_ep.using_move=1201..1300}] run function svm_ep:power/lightning/electric_string/start_tick
execute as @s[scores={svm_ep.using_move=1301..1400}] run function svm_ep:power/lightning/charge/start_tick
execute as @s[scores={svm_ep.using_move=1401..1500}] run function svm_ep:power/lightning/field/tick
execute as @s[scores={svm_ep.p.lightning_foreshadowing=1..}] run function svm_ep:power/lightning/foreshadow/tick
execute as @s[scores={svm_ep.p.lightning_charge=1..}] run function svm_ep:power/lightning/charge/tick

#execute as @s[scores={svm_ep.p.lightning_awakening_lenght=1..}] run function svm_ep:power/lightning/awakening/tick

scoreboard players reset @s[scores={svm_ep.using_move=90}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=270}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=470}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=570}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=670}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=701}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=901..910}] svm_ep.using_move

tag @s add executor
execute as @e[type=marker,distance=..50,tag=svm_ep.lightning_place] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @e[type=marker,distance=..50,tag=same_id] run particle minecraft:dust{color:[0f,0.9f,1f],scale:2.5f} ~ ~ ~ 0.35 0.35 0.35 0 4 force @s
tag @s remove executor
execute at @s if predicate svm_ep:thunder run function svm_ep:power/lightning/thunder_passive
execute at @s if predicate svm_ep:water run function svm_ep:power/lightning/in_water_passive
tag @e[type=marker,distance=..50,tag=svm_ep.lightning_place] remove same_id