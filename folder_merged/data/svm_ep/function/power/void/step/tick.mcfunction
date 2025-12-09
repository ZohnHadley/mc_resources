tag @s add executor
scoreboard players remove @s svm_ep.p.void_step_charge 3
gamemode spectator @s[scores={svm_ep.p.void_step_charge=1..}]


execute at @s unless entity @e[type=minecraft:marker,tag=svm_ep.phase_marker,distance=..20] run function svm_ep:power/void/step/tp_to_marker
execute at @s if entity @a[tag=!executor,tag=svm_ep.void_user,scores={svm_ep.p.void_step_charge=1..}] run function svm_ep:power/void/step/check_with_ids

execute at @s summon minecraft:marker run function svm_ep:power/void/step/summon_marker


execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players remove @s svm_ep.p.void_step_charge 4
function svm_ep:erase_block
#tp @s ~ ~ ~
function svm_ep:power/void/charging/small_particle
effect give @s minecraft:blindness 2 0 true



execute as @e[tag=!executor,dx=2,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[scores={svm_ep.projectile=1..},distance=..2.3] run tag @s add hitby

execute as @e[tag=!executor,distance=..2,type=!#svm_ep:technical] run tag @s add hitby

execute as @e[distance=..25,tag=hitby] run function svm_ep:power/void/step/hitby 
execute as @s[scores={svm_ep.p.void_step_charge=..1}] run function svm_ep:power/void/step/end


tag @s remove executor
