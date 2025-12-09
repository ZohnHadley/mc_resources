tag @s add executor
effect give @s minecraft:darkness 2 0 true
effect clear @s[scores={svm_ep.using_move=..1102}] minecraft:darkness


gamemode spectator @s[scores={svm_ep.using_move=1102..1300}]
execute as @s[scores={svm_ep.using_move=1102}] run function svm_ep:power/phase/full_phase/end

execute at @s[tag=!svm_ep.phase_first_tick] unless entity @e[type=minecraft:marker,tag=svm_ep.phase_marker,distance=..20] run function svm_ep:power/phase/full_phase/tp_to_marker
execute at @s[tag=!svm_ep.phase_first_tick] if entity @a[tag=!executor,tag=svm_ep.phase_user,scores={svm_ep.using_move=1201..1400}] run function svm_ep:power/phase/full_phase/check_with_ids

execute at @s summon minecraft:marker run function svm_ep:power/phase/full_phase/summon_marker



tag @s remove executor
tag @s remove svm_ep.phase_first_tick
