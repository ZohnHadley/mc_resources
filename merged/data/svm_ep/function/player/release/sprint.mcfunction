execute as @s[scores={svm_ep.setting.sprint_ability=0}] run return 0
scoreboard players set @s svm_ep.selected_ability 0
execute as @s[scores={input.sneak_time=1..}] run scoreboard players operation @s[scores={svm_ep.selected_ability.sneak=1..}] svm_ep.selected_ability = @s svm_ep.selected_ability.sneak
execute as @s[scores={svm_ep.selected_ability=1..}] run return 0
scoreboard players operation @s svm_ep.selected_ability = @s svm_ep.selected_ability.general