#execute as @s[scores={svm_ep.charged_hammer=1..}]
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.hammer:1b}}}}] run scoreboard players reset @s svm_ep.charged_hammer
scoreboard players set @s svm_ep.check_click 2
scoreboard players add @s svm_ep.charged_hammer 1
scoreboard players set @s svm_ep.hammer_delay 80

effect give @s minecraft:slowness 1 4 true