execute as @e[tag=svm_ep.in_gravity_field] run damage @s 6.5 minecraft:cramming by @n[tag=executor]
execute as @e[tag=svm_ep.in_gravity_field] run scoreboard players add @n[tag=executor] svm_ep.mana_drain 50
scoreboard players add @n[tag=svm_ep.gravity_field] svm_ep.lifetime 1

execute if predicate svm_ep:chance/33_percent run playsound minecraft:entity.wither.break_block master @a[distance=..45] ~ ~ ~ 0.5 0.7 0.25
