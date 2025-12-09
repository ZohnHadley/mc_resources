execute at @s run tp @s[scores={svm_ep.p.flora_rooted_bridge_direction=5}] ~ ~ ~ ~ ~-17
execute at @s run tp @s[scores={svm_ep.p.flora_rooted_bridge_direction=6}] ~ ~ ~ ~ ~17
execute at @s run tp @s[scores={svm_ep.p.flora_rooted_bridge_direction=7}] ~ ~ ~ ~-17 ~
execute at @s run tp @s[scores={svm_ep.p.flora_rooted_bridge_direction=8}] ~ ~ ~ ~17 ~

execute store result score @s svm_ep.p.flora_rooted_bridge_direction run random value 1..4