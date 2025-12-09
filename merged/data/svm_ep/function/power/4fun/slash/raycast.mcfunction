execute unless block ~ ~ ~ air run tag @s add end_raycast
execute if entity @e[tag=!executor,dx=0] run tag @s add end_raycast
execute unless entity @s[distance=..150] run tag @s add end_raycast
execute as @s[tag=end_raycast] as @s[nbt={SelectedItem:{tag:{fukuma:1b}}}] run function smaras:fukuma/auto

execute if entity @s[distance=..150,tag=!end_raycast] positioned ^ ^ ^0.3 run function smaras:fukuma/raycast