#$title @s actionbar [$(mana_display)


execute as @s[scores={svm_ep.p.time_ability_xx_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_ability_xx_delay
execute as @s[scores={svm_ep.p.time_ability_xx_delay=1..}] run function svm_ep:power/delay
#$title @s[scores={svm_ep.p.time_ability_xx_delay=1..}] actionbar [$(mana_display)
#,{"text":"|","color":"gray"},$(cooldown_display)]
