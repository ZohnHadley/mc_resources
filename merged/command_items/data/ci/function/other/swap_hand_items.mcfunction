
summon minecraft:item_display ~ ~ ~ {Tags:["ci.tick_storage_mainhand","ci.tick_storage"]}
summon minecraft:item_display ~ ~ ~ {Tags:["ci.tick_storage_offhand","ci.tick_storage"]}
item replace entity @n[tag=ci.tick_storage_mainhand] container.0 from entity @s weapon.mainhand
item replace entity @n[tag=ci.tick_storage_offhand] container.0 from entity @s weapon.offhand

item replace entity @s weapon.offhand from entity @n[tag=ci.tick_storage_mainhand] container.0
item replace entity @s weapon.mainhand from entity @n[tag=ci.tick_storage_offhand] container.0

kill @e[tag=ci.tick_storage]
scoreboard players set %swap_item ci.math 0