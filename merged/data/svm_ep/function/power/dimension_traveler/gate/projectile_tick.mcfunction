scoreboard players add @s svm_ep.lifetime 1
tag @s add executor
execute as @a if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add immune

function svm_ep:power/dimension_traveler/gate/ray/particle

execute at @s run particle minecraft:dust{color:[0f,0f,0f],scale:2.3f} ~ ~0.7 ~ 3.52 3.52 3.52 0 3

execute as @s[scores={svm_ep.lifetime=..10}] at @s run function svm_ep:power/dimension_traveler/gate/move
execute as @s[scores={svm_ep.lifetime=30..}] at @s run function svm_ep:power/dimension_traveler/gate/projectile_tick2
execute as @s[scores={svm_ep.lifetime=30..},tag=!svm_ep.boomed] at @s run function svm_ep:power/dimension_traveler/gate/boom
tag @a remove immune
tag @s remove executor