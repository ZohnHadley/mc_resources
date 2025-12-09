execute as @e[distance=..40,scores={svm_ep.effect=1..},predicate=!svm_ep:time_stopped] run function svm_ep:entity/effect/tick
execute as @e[distance=..40,tag=svm_ep.npc,tag=!svm_ep.npc_display,predicate=!svm_ep:time_stopped] at @s run function svm_ep:npc/tick
execute as @e[distance=..40,type=#svm_ep:selected,tag=!svm_ep.npc,tag=!svm_ep.no_tick,predicate=!svm_ep:time_stopped] at @s run function svm_ep:selected_tick

execute as @e[distance=..40,scores={svm_ep.particle=1..},predicate=!svm_ep:time_stopped] run function svm_ep:particle_tick

execute as @e[distance=..40,scores={svm_ep.projectile=-100..},predicate=!svm_ep:time_stopped] run function svm_ep:projectile/tick

#POWERS+STYLES
execute as @e[distance=..40,scores={svm_ep.fighting_style=1..},predicate=!svm_ep:time_stopped] at @s run function svm_ep:fighting_style/tick
execute as @e[distance=..40,tag=svm_ep.power_user,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/user_tick
execute as @e[distance=..40,type=!#svm_ep:technical] if predicate svm_ep:chance/75_percent at @s anchored feet run function svm_ep:power/time/skip/go_in_front