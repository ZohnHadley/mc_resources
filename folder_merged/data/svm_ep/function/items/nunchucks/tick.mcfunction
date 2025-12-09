execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}] unless score @s svm_ep.holding_nunchucks matches 1 unless score @s svm_ep.holding_nunchucks matches 3 run function svm_ep:items/nunchucks/activate_mainhand
execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}}] unless score @s svm_ep.holding_nunchucks matches 2..3 run function svm_ep:items/nunchucks/activate_offhand
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}},scores={svm_ep.holding_nunchucks=2}] run scoreboard players set @s svm_ep.holding_nunchucks 3

execute as @s[scores={svm_ep.holding_nunchucks=1}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}] run function svm_ep:items/nunchucks/put_away
execute as @s[scores={svm_ep.holding_nunchucks=2}] unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}}] run function svm_ep:items/nunchucks/put_away
execute as @s[scores={svm_ep.holding_nunchucks=3}] unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}}] run scoreboard players set @s svm_ep.holding_nunchucks 1
execute as @s[scores={svm_ep.holding_nunchucks=3}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{svm_ep.nunchucks:1b}}}}] run scoreboard players set @s svm_ep.holding_nunchucks 2

#execute unless entity @s[nbt={SelectedItem:{components:{"custom_model_data":7}}}] run item modify entity @s[scores={svm_ep.holding_nunchucks=1,svm_ep.nunchucks_spin=..0}] weapon svm_ep:cmd7
#execute unless entity @s[nbt={SelectedItem:{components:{"custom_model_data":8}}}] run item modify entity @s[scores={svm_ep.holding_nunchucks=1,svm_ep.nunchucks_spin=1..}] weapon svm_ep:cmd8
#execute unless entity @s[nbt={SelectedItem:{components:{"custom_model_data":9}}}] run item modify entity @s[scores={svm_ep.holding_nunchucks=1,svm_ep.nunchucks_spin=20..}] weapon svm_ep:cmd9
#execute unless entity @s[nbt={SelectedItem:{components:{"custom_model_data":10}}}] run item modify entity @s[scores={svm_ep.holding_nunchucks=1,svm_ep.nunchucks_spin=40..}] weapon svm_ep:cmd10


execute at @s[scores={svm_ep.nunchucks_spin=1..}] run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.2 1
execute at @s[scores={svm_ep.nunchucks_spin=20..}] run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.2 1
execute at @s[scores={svm_ep.nunchucks_spin=40..}] run particle minecraft:cloud ~ ~0.1 ~ 0 0 0 0.2 1

execute at @s[scores={svm_ep.nunchucks_spin=1..}] if predicate svm_ep:chance/25_percent run playsound minecraft:block.chain.place master @a[distance=..20] ~ ~ ~ 0.5 0.75
execute at @s[scores={svm_ep.nunchucks_spin=20..}] if predicate svm_ep:chance/75_percent run playsound minecraft:block.chain.place master @a[distance=..20] ~ ~ ~ 0.7 1.5
execute at @s[scores={svm_ep.nunchucks_spin=40..}] run playsound minecraft:block.chain.place master @a[distance=..20] ~ ~ ~ 1 2

execute at @s[scores={svm_ep.nunchucks_spin=1..}] if predicate svm_ep:chance/25_percent run playsound minecraft:entity.horse.breathe master @a[distance=..30] ~ ~1 ~ 0.7 0.7
execute at @s[scores={svm_ep.nunchucks_spin=20..}] if predicate svm_ep:chance/75_percent run playsound minecraft:entity.horse.breathe master @a[distance=..30] ~ ~1 ~ 0.7 1.2
execute at @s[scores={svm_ep.nunchucks_spin=40..}] run playsound minecraft:entity.horse.breathe master @a[distance=..30] ~ ~1 ~ 0.7 2

effect give @s[scores={svm_ep.nunchucks_spin=1..}] minecraft:strength 1 0 true
effect give @s[scores={svm_ep.nunchucks_spin=20..}] minecraft:strength 1 1 true
effect give @s[scores={svm_ep.nunchucks_spin=40..}] minecraft:strength 1 2 true
scoreboard players set @s[scores={svm_ep.nunchucks_spin=1..}] svm_ep.clear_strength 2
scoreboard players set @s[scores={svm_ep.nunchucks_spin=..0}] svm_ep.nunchucks_spin 0
scoreboard players remove @s[scores={svm_ep.nunchucks_spin=1..}] svm_ep.nunchucks_spin 1
scoreboard players set @s[scores={svm_ep.nunchucks_spin=200..}] svm_ep.nunchucks_spin 200