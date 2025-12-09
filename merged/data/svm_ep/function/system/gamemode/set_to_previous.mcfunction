scoreboard players set %OLD svm_ep.previous_gamemode 0
execute as @s[gamemode=creative] run scoreboard players set %OLD svm_ep.previous_gamemode 1
execute as @s[gamemode=adventure] run scoreboard players set %OLD svm_ep.previous_gamemode 2
execute as @s[gamemode=spectator] run scoreboard players set %OLD svm_ep.previous_gamemode 3

execute as @s[scores={svm_ep.previous_gamemode=0}] run gamemode survival
execute as @s[scores={svm_ep.previous_gamemode=1}] run gamemode creative
execute as @s[scores={svm_ep.previous_gamemode=2}] run gamemode adventure
execute as @s[scores={svm_ep.previous_gamemode=3}] run gamemode spectator
scoreboard players operation @s svm_ep.previous_gamemode = %OLD svm_ep.previous_gamemode