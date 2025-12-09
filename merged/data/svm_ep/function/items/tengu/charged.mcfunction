#execute as @s[scores={svm_ep.charged_hammer=1..}]
scoreboard players set @s svm_ep.check_click 2
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.tengu_fan:1b}}}}] run scoreboard players reset @s svm_ep.charged_tengu

effect give @s minecraft:slowness 1 4 true