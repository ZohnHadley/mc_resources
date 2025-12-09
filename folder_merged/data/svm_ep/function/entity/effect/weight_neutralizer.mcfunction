scoreboard players set @s svm_ep.effect 1

scoreboard players remove @s svm_ep.e.weight_neutralizer 1

attribute @s minecraft:gravity modifier add svm_ep.e.weight_neutralizer -0.75 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add svm_ep.e.weight_neutralizer -0.5 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add svm_ep.e.weight_neutralizer 2 add_multiplied_total

execute as @s[scores={svm_ep.e.weight_neutralizer=0}] run function svm_ep:entity/effect/weight_neutralizer_end