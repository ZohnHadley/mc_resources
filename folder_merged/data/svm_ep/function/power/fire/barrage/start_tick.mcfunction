scoreboard players set @s svm_ep.using_move 150
scoreboard players set @s svm_ep.p.fire_ability_03_delay 120
scoreboard players add @s svm_ep.p.fire_barrage_charge 1
execute if score @s svm_ep.p.fire_barrage_charge_max <= @s svm_ep.p.fire_barrage_charge run tag @s add charged
execute as @s[tag=charged] run function svm_ep:power/fire/barrage/charge
tag @s remove charged
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..4}] svm_ep.using_move
