execute as @s[type=!player] run return 1
execute as @s[gamemode=!spectator] run return 1
execute as @s[scores={svm_ep.using_move=1..}] run return 1

return 0
#WILL RETURN 0 if youre spectator, player and youre using an ability

#WILL RETURN 1 if not a spectator
#WILL RETURN 1 if not a player
#WILL RETURN 1 if using an ability
#should work lmao
#not sure tho
#lol
#note
