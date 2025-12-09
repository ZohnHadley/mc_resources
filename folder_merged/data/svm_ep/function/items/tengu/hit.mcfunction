#execute as @s[scores={svm_ep.charged_hammer=1..}]
scoreboard players reset @s svm_ep.charged_tengu
scoreboard players reset @s svm_ep.check_click

execute at @s unless entity @s[scores={input.sneak_time=1..}] run function svm_ep:items/tengu/blast/shoot
execute at @s as @s[scores={input.sneak_time=1..}] run function svm_ep:items/tengu/tornado/shoot


scoreboard players set @s svm_ep.tengu_delay 160
execute at @s unless entity @s[scores={input.sneak_time=1..}] run scoreboard players add @s svm_ep.tengu_delay 80

item modify entity @s weapon svm_ep:damage
item modify entity @s weapon svm_ep:damage
item modify entity @s weapon svm_ep:damage
execute unless entity @s[scores={input.sneak_time=1..}] run item modify entity @s weapon svm_ep:damage
execute unless entity @s[scores={input.sneak_time=1..}] run item modify entity @s weapon svm_ep:damage
item modify entity @s[nbt={SelectedItem:{tag:{Damage:100}}}] weapon svm_ep:consume
