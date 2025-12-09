scoreboard players add @s[scores={svm_ep.mana=1..}] svm_ep.p.iceberg_charge 2
scoreboard players add @s svm_ep.mana_drain 250
scoreboard players add @s svm_ep.p.ice_ability_01_delay 3

execute as @s[scores={svm_ep.p.iceberg_charge=8..}] run scoreboard players add @s svm_ep.p.iceberg_charged 1
execute as @s[scores={svm_ep.p.iceberg_charge=8..}] run scoreboard players set @s svm_ep.p.iceberg_charge 0


#execute at @s as @a[distance=..10] unless entity @s[scores={svm_ep.shaking=1..}] run scoreboard players set @s svm_ep.shaking 1


scoreboard players add @s svm_ep.used_move 2
scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.iceberg_charged
scoreboard players operation @s svm_ep.numbers *= %iceberg_max_charge_level_multiplier svm_ep.world_settings
execute if score @s svm_ep.level <= @s svm_ep.numbers run function svm_ep:power/ice/berg/end_lvl
execute if score @s svm_ep.p.iceberg_charged >= %iceberg_max_size svm_ep.world_settings run function svm_ep:power/ice/berg/end_size

execute unless entity @s[scores={svm_ep.mana=1..}] run function svm_ep:power/ice/berg/end_charge
execute unless predicate svm_ep:holding_ability run function svm_ep:power/ice/berg/end_charge