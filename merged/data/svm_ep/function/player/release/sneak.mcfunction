execute as @s[scores={svm_ep.setting.sneak_ability=0}] run return 0
scoreboard players set @s svm_ep.selected_ability 0
execute as @s[scores={input.sprint_time=1..}] run scoreboard players operation @s[scores={svm_ep.selected_ability.sprint=1..}] svm_ep.selected_ability = @s svm_ep.selected_ability.sprint
execute as @s[scores={svm_ep.selected_ability=1..}] run return 0
scoreboard players operation @s svm_ep.selected_ability = @s svm_ep.selected_ability.general