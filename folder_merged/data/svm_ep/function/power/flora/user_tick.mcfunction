
execute as @s[scores={svm_ep.p.flora_junglification=1..}] run function svm_ep:power/flora/junglification/tick
execute as @s[scores={svm_ep.p.flora_grass_step=1..}] run function svm_ep:power/flora/grass_step/tick
execute as @s[scores={svm_ep.p.flora_inescapable_garden_castor=1..}] run function svm_ep:power/flora/inescapable_garden/tick

execute as @s[type=player] at @e[tag=svm_ep.flora_manipulated_block,limit=24,sort=random,distance=..50] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.5,0.9,0.2],scale:1} ~ ~ ~ 0.35 0.35 0.35 0 1 force @s
execute as @s[type=player] at @e[tag=svm_ep.flora_block_on_cooldown,limit=24,sort=random,distance=..50] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=svm_ep.flora_manipulated_block,distance=..0.4] run particle minecraft:dust{color:[0.9,0.5,0.2],scale:1} ~ ~ ~ 0.35 0.35 0.35 0 1 force @s

execute unless entity @s[scores={svm_ep.using_move=1..}] run return 0
execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/flora/thorned_slashes/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/flora/rooted_bridge/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/flora/rooted_bridge/tick2
execute as @s[scores={svm_ep.using_move=301..400}] run function svm_ep:power/flora/forestify/tick
execute as @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/flora/junglification/start_tick
execute as @s[scores={svm_ep.using_move=501..600}] run function svm_ep:power/flora/bush/tick
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/flora/creation/tick
execute as @s[scores={svm_ep.using_move=801..900}] run function svm_ep:power/flora/flower_field/tick
execute as @s[scores={svm_ep.using_move=901..1000}] run function svm_ep:power/flora/mangrove_tower/tick
execute as @s[scores={svm_ep.using_move=1001..1100}] run function svm_ep:power/flora/piercing_thorns/tick
execute as @s[scores={svm_ep.using_move=1101..1200}] run function svm_ep:power/flora/piercing_vine/tick
execute as @s[scores={svm_ep.using_move=1201..1250}] run function svm_ep:power/flora/petals_of_peace/start_tick
execute as @s[scores={svm_ep.using_move=1251..1300}] run function svm_ep:power/flora/petals_of_peace/tick
execute as @s[scores={svm_ep.using_move=1301..1400}] run function svm_ep:power/flora/tree_big/start_tick
execute as @s[scores={svm_ep.using_move=1401..1500}] run function svm_ep:power/flora/tree_big/tick
execute as @s[scores={svm_ep.using_move=1501..1600}] run function svm_ep:power/flora/cacti_grenade/tick
execute as @s[scores={svm_ep.using_move=1601..1700}] run function svm_ep:power/flora/wooden_branch/tick
execute as @s[scores={svm_ep.using_move=1701..1800}] run function svm_ep:power/flora/leaf_storm/tick
execute as @s[scores={svm_ep.using_move=1801..1900}] run function svm_ep:power/flora/spore_cloud/tick
execute as @s[scores={svm_ep.using_move=1901..2000}] run function svm_ep:power/flora/warped_fungus/tick
execute as @s[scores={svm_ep.using_move=2001..2050}] unless entity @e[tag=svm_ep.phasing_moss] run function svm_ep:power/flora/phasing_moss/end
execute as @s[scores={svm_ep.using_move=2051..2100}] run function svm_ep:power/flora/phasing_moss/start_tick
execute as @s[scores={svm_ep.using_move=2101..2200}] run function svm_ep:power/flora/inescapable_garden/start_tick
execute as @s[scores={svm_ep.using_move=2201..2300}] run function svm_ep:power/flora/plant_growth/tick
execute as @s[scores={svm_ep.using_move=2301..2500}] run function svm_ep:power/flora/selection/tick
execute as @s[scores={svm_ep.using_move=2501..2600}] run function svm_ep:power/flora/item_creation/tick
execute as @s[scores={svm_ep.using_move=2601..2700}] run function svm_ep:power/flora/manipulation/tick
execute as @s[scores={svm_ep.using_move=2701..2800}] run function svm_ep:power/flora/harvest/tick



