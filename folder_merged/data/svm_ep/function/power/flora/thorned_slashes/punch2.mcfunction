tag @s add executor

execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/flora/thorned_slashes/raycast2
execute at @s run playsound minecraft:entity.player.attack.weak hostile @a ~ ~ ~ 3 1.2
item modify entity @s weapon.mainhand svm_ep:update_mainhand
#as @e[dx=0,tag=!executor,type=!#svm_ep:technical]
tag @s remove executor
tag @s remove end_raycast

function svm_ep:items/sword_slash