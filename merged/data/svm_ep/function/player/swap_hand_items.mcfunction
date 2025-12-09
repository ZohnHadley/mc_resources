summon minecraft:item_display ~ ~ ~ {Tags:["svm_ep.tick_storage_mainhand","svm_ep.tick_storage"]}
summon minecraft:item_display ~ ~ ~ {Tags:["svm_ep.tick_storage_offhand","svm_ep.tick_storage"]}
item replace entity @e[tag=svm_ep.tick_storage_mainhand] container.0 from entity @s weapon.mainhand
item replace entity @e[tag=svm_ep.tick_storage_offhand] container.0 from entity @s weapon.offhand

item replace entity @s weapon.offhand from entity @e[tag=svm_ep.tick_storage_mainhand,limit=1] container.0
item replace entity @s weapon.mainhand from entity @e[tag=svm_ep.tick_storage_offhand,limit=1] container.0

kill @e[tag=svm_ep.tick_storage]