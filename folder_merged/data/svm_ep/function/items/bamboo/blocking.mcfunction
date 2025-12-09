scoreboard players remove @s svm_ep.bamblock 1
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.bamboo:1b}}}}] run tag @s add blocking
scoreboard players reset @s[tag=!blocking] svm_ep.bamblock
effect give @s[scores={svm_ep.bamblock=24..}] minecraft:resistance 1 2 true
effect give @s[scores={svm_ep.bamblock=24..}] minecraft:slowness 1 4 true
effect give @s[scores={svm_ep.bamblock=24..}] minecraft:weakness 1 4 true
effect give @s[scores={svm_ep.bamblock=24..}] minecraft:mining_fatigue 1 5 true
execute as @s[scores={svm_ep.bamblock=4..}] run item modify entity @s weapon {"function":"minecraft:set_components","components":{"minecraft:item_model":"svm_ep:bamboo_block"},"conditions":[]}
execute as @s[scores={svm_ep.bamblock=..3}] run item modify entity @s weapon {"function":"minecraft:set_components","components":{"minecraft:item_model":"svm_ep:bamboo"},"conditions":[]}


tag @s remove blocking
