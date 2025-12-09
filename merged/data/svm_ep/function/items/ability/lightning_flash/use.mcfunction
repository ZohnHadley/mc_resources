tag @s add executor

scoreboard players add @s svm_ep.lightning_flash_length 6
scoreboard players add @s[tag=svm_ep.lightning_user] svm_ep.lightning_flash_length 7
execute if items entity @s[scores={svm_ep.fighting_style=1}] weapon.mainhand *[minecraft:custom_data~{svm_ep.katana:{}}] run scoreboard players add @s svm_ep.lightning_flash_length 4

execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..30] ~ ~ ~ 0.25 1.4
execute at @s run playsound minecraft:item.trident.thunder master @a[distance=..30] ~ ~ ~ 0.25 0.7

execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3
execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:items/ability/lightning_flash/raycast
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3


#scoreboard players add @s[scores={svm_ep.fighting_style_right_click_cooldown=5}] svm_ep.mana 35
#scoreboard players add @s[scores={svm_ep.fighting_style_right_click_cooldown=4}] svm_ep.mana 20

scoreboard players add @s svm_ep.used_move 120
scoreboard players remove @s[scores={svm_ep.fighting_style_right_click_cooldown=5}] svm_ep.used_move 80
scoreboard players remove @s[scores={svm_ep.fighting_style_right_click_cooldown=4}] svm_ep.used_move 40
tag @s remove executor
