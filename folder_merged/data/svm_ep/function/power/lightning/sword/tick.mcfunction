execute as @s[scores={svm_ep.using_move=599}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/1"]
execute as @s[scores={svm_ep.using_move=598}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/2"]
execute as @s[scores={svm_ep.using_move=597}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/3"]
execute as @s[scores={svm_ep.using_move=596}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/4"]
execute as @s[scores={svm_ep.using_move=595}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/5"]
execute as @s[scores={svm_ep.using_move=594}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/6"]
execute as @s[scores={svm_ep.using_move=593}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/7"]
execute as @s[scores={svm_ep.using_move=590..592}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/8"]

execute as @s[scores={svm_ep.using_move=589}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/9"]
execute as @s[scores={svm_ep.using_move=588}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/10"]
execute as @s[scores={svm_ep.using_move=585..587}] on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:thunder_god/sword/11"]

execute at @s[scores={svm_ep.using_move=595}] run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..20] ~ ~ ~ 3 1.2
execute at @s[scores={svm_ep.using_move=589}] run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..20] ~ ~ ~ 3 1.2

execute as @s[scores={svm_ep.using_move=591}] at @s run function svm_ep:power/lightning/sword/punch
execute as @s[scores={svm_ep.using_move=586}] at @s run function svm_ep:power/lightning/sword/punch2