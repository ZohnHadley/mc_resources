#execute as @s[scores={svm_ep.holding_katana=1}] unless entity @s[scores={svm_ep.p.flora_ability_04_delay=1..}] as @s[scores={svm_ep.mana=5..}] run function svm_ep:power/flora/ability/use/4
#execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.katana_cherry:1b}}}}}] unless entity @s[scores={svm_ep.p.flora_ability_10_delay=1..}] as @s[scores={svm_ep.mana=80..}] run function svm_ep:power/flora/ability/use/10

#execute as @s[scores={svm_ep.holding_gauntlet=1}] unless entity @s[scores={svm_ep.p.flora_ability_06_delay=1..}] as @s[scores={svm_ep.mana=30..}] run function svm_ep:power/flora/ability/use/6
#execute as @s[scores={svm_ep.holding_gauntlet=2}] unless entity @s[scores={svm_ep.p.flora_ability_05_delay=1..}] as @s[scores={svm_ep.mana=1..}] run function svm_ep:power/flora/ability/use/5
#execute as @s[scores={svm_ep.holding_jungle_staff=1}] as @s[scores={svm_ep.mana=1..,svm_ep.using_move=201..300}] run function svm_ep:power/flora/ability/use/5
#execute as @s[scores={svm_ep.holding_jungle_staff=1}] unless entity @s[scores={svm_ep.p.flora_ability_05_delay=1..}] as @s[scores={svm_ep.mana=1..}] run function svm_ep:power/flora/ability/use/5

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.jungle_staff:1b}] run tellraw @s[scores={svm_ep.mana_max=..325}] ["",{"text":"|","color":"gray"},{"text":" Requires 325 max mana! ","color":"red"},{"text":"|","color":"gray"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.jungle_staff:1b}] unless entity @s[scores={svm_ep.p.flora_ability_06_delay=1..}] as @s[scores={svm_ep.mana=30..}] run function svm_ep:power/flora/ability/use/6
execute if items entity @s weapon.offhand *[minecraft:custom_data~{svm_ep.jungle_staff:1b}] unless entity @s[scores={svm_ep.p.flora_ability_08_delay=1..}] as @s[scores={svm_ep.mana=325..}] run function svm_ep:power/flora/ability/use/8

