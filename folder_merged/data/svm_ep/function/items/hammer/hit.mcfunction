#execute as @s[scores={svm_ep.charged_hammer=1..}]
scoreboard players reset @s svm_ep.charged_hammer
scoreboard players reset @s svm_ep.check_click

execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.thunder_hammer:1b}}}}] at @s run function svm_ep:items/hammer/thunder/throw
#execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.ice_breaker:1b}}}}] at @s run function svm_ep:items/hammer/ice/attack
