execute as @s[scores={svm_ep.e.accelerated=1..}] run function svm_ep:power/time/accelerate/walk
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..},tag=svm_ep.death_user] at @s run function svm_ep:power/death/unsealed_reaper/walk


function #svm_ep:player_walking_or_running

scoreboard players reset @s svm_ep.walking
scoreboard players reset @s svm_ep.sprinting
