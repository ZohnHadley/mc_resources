scoreboard players add @s svm_ep.used_move 100
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.75
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^0.1 summon item_display run function svm_ep:items/hammer/thunder/spawn
tag @s remove executor
item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.thunder_hammer:1b}}}}] weapon.mainhand svm_ep:consume
effect clear @s minecraft:slowness

