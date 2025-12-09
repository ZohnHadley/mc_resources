execute as @s[scores={svm_ep.using_move=1..100}] at @s run function svm_ep:power/water/creation/tick
execute as @s[scores={svm_ep.using_move=101..200}] at @s run function svm_ep:power/water/collect/tick
execute as @s[scores={svm_ep.using_move=201..300}] at @s run function svm_ep:power/water/manipulation/tick
execute as @s[scores={svm_ep.using_move=301..400}] at @s run function svm_ep:power/water/rising/tick
execute as @s[scores={svm_ep.using_move=401..500}] at @s run function svm_ep:power/water/droplet/tick


execute as @s[scores={svm_ep.p.water_flowing_movement=1..}] at @s run function svm_ep:power/water/flowing_movement/tick
