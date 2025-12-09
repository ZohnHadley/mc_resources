execute at @s run tp @s @n[tag=svm_ep.time_stopped_player]
effect give @s[scores={svm_ep.time_stopped=20..}] blindness 2 0 true
execute as @s[scores={svm_ep.selected_ability=1..}] run function svm_ep:player/ui
