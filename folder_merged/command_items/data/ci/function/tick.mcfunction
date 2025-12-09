scoreboard players add %WORLD ci.tick 1

execute as @a if items entity @s weapon.* *[minecraft:custom_data~{tick:{}}] run function ci:input/tick
execute as @a if items entity @s armor.* *[minecraft:custom_data~{tick:{}}] run function ci:input/tick_armor