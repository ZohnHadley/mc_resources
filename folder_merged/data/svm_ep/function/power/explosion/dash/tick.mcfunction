
execute as @s[scores={svm_ep.using_move=..264}] run function svm_ep:power/explosion/dash/start_tick
execute as @s[scores={svm_ep.using_move=265..}] run function svm_ep:power/explosion/dash/propel_tick
scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.explosion_launch_charge
execute at @s anchored feet positioned ^ ^ ^0.35 positioned ~ ~0.5 ~ run function svm_ep:power/explosion/dash/raycast_charge
scoreboard players add @s svm_ep.p.explosion_ability_05_delay 1
