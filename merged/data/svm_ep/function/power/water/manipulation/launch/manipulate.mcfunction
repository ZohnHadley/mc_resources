execute unless entity @e[tag=svm_ep.water_launch,distance=..85] run return run scoreboard players reset @s svm_ep.using_move
data modify entity @n[tag=svm_ep.water_launch] Rotation set from entity @s Rotation
scoreboard players set @n[tag=svm_ep.water_launch] svm_ep.lifetime 15
execute as @n[tag=svm_ep.water_launch] if entity @s[distance=15..] as @n[tag=svm_ep.power_user] run scoreboard players add @s svm_ep.mana_drain 80
execute as @n[tag=svm_ep.water_launch] if entity @s[distance=25..] as @n[tag=svm_ep.power_user] run scoreboard players add @s svm_ep.mana_drain 100
execute as @n[tag=svm_ep.water_launch] if entity @s[distance=35..] as @n[tag=svm_ep.power_user] run scoreboard players add @s svm_ep.mana_drain 120
scoreboard players add @s svm_ep.mana_drain 160
