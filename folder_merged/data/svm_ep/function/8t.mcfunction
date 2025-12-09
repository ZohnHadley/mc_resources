schedule function svm_ep:8t 8t
execute if score 8t svm_ep.function matches 0 run return 0


scoreboard players enable @a svm_ep.z.bind_ability.slot

execute as @e[tag=svm_ep.colloseum_pillar_placement,limit=1,sort=random] unless entity @e[tag=svm_ep.colloseum_pillar_active,distance=..120] run tag @s add svm_ep.colloseum_pillar_active

execute as @e[tag=svm_ep.colloseum_pillar_active] at @s run function svm_ep:structures/colloseum/pillar_place
execute as @e[tag=svm_ep.npc_display] at @s run function svm_ep:npc/display_tick
execute as @e[tag=svm_ep.block_8t] at @s run function svm_ep:block/8t
execute in svm_ep:void as @e[distance=0..,type=!#svm_ep:technical] run function svm_ep:power/void/black_hole/effect_tick

#tag @e[type=minecraft:arrow] remove svm_ep.arrow_redirected
#scoreboard players add @e[type=marker,tag=svm_ep.placed_temporary_block,predicate=!svm_ep:time_stopped] svm_ep.lifetime 1
#execute as @e[type=marker,tag=svm_ep.placed_water,scores={svm_ep.lifetime=1..},limit=50,predicate=!svm_ep:time_stopped] at @s run function svm_ep:system/temporary_block/8t
#function svm_ep:power/water/temporary/clear