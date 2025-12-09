tp @n[tag=executor] @s
scoreboard players operation @n[tag=executor] svm_ep.mana = @s svm_ep.time_mana_storage
#execute store result entity @n[tag=executor] Health short 1 run scoreboard players get @s svm_ep.time_health_storage
#execute as @n[tag=executor,type=player] run function svm_ep:player/restore_healh