execute if items entity @s armor.head minecraft:skeleton_skull run effect give @s minecraft:resistance 1 0 true
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] at @s run function svm_ep:power/death/unsealed_reaper/tick


execute as @s[scores={svm_ep.using_move=1..100}] at @s run function svm_ep:power/death/life_drain/tick
execute as @s[scores={svm_ep.using_move=101..200}] at @s run function svm_ep:power/death/cleaving_cut/tick
execute as @s[scores={svm_ep.using_move=201..300}] at @s run function svm_ep:power/death/death_compass/tick
execute as @s[scores={svm_ep.using_move=301..400}] at @s run function svm_ep:power/death/unsealed_reaper/start_tick