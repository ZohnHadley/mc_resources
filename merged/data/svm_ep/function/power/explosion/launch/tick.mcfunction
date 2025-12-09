execute at @s anchored eyes positioned ^ ^-0.15 ^-0.35 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.025 1
execute at @s[scores={svm_ep.p.explosion_launch_charge=50..}] anchored eyes positioned ^ ^-0.15 ^-0.35 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.025 1
execute at @s[scores={svm_ep.p.explosion_launch_charge=100..}] anchored eyes positioned ^ ^-0.15 ^-0.35 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.025 2
execute at @s[scores={svm_ep.p.explosion_launch_charge=150..}] anchored eyes positioned ^ ^-0.15 ^-0.35 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 3
scoreboard players add @s svm_ep.p.explosion_launch_charge 1
scoreboard players set @s[scores={svm_ep.p.explosion_launch_charge=..6}] svm_ep.p.explosion_launch_charge 6
execute unless predicate svm_ep:holding_ability run function svm_ep:power/explosion/launch/throw
execute if predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.using_move 150
