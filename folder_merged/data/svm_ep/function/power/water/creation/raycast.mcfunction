execute unless entity @s[distance=..15] run scoreboard players set %raycast_state svm_ep.numbers 0

execute unless block ^ ^ ^0.15 #svm_ep:no_physical_hitbox run scoreboard players set %raycast_state svm_ep.numbers 2
execute if block ~ ~ ~ water run scoreboard players set %raycast_state svm_ep.numbers 2

execute if score %raycast_state svm_ep.numbers matches 1 positioned ^ ^ ^0.15 run return run function svm_ep:power/water/creation/raycast
#execute if score %raycast_state svm_ep.numbers matches 0 run return 0
function svm_ep:power/water/creation/effect