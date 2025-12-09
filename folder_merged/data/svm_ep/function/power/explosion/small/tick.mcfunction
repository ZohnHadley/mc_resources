scoreboard players add @s svm_ep.p.explosion_small_charge 1
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.p.explosion_ability_01_delay 1
execute unless entity @s[scores={svm_ep.mana=1..}] run tag @s add explode
execute unless predicate svm_ep:holding_ability run tag @s add explode
tag @s[scores={svm_ep.p.explosion_small_charge=150..}] add explode

scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=1..}] svm_ep.mana_drain 75
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=6..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=12..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=18..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=24..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=30..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_small_charge=36..}] svm_ep.mana_drain 50


execute as @s[tag=explode] at @s anchored eyes run function svm_ep:power/explosion/small/raycast
