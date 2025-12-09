scoreboard players set @s svm_ep.previous_gamemode 0
execute as @s[gamemode=creative] run scoreboard players set @s svm_ep.previous_gamemode 1
execute as @s[gamemode=adventure] run scoreboard players set @s svm_ep.previous_gamemode 2
execute as @s[gamemode=spectator] run scoreboard players set @s svm_ep.previous_gamemode 3