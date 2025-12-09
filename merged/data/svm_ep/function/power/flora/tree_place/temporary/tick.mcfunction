scoreboard players add @s svm_ep.lifetime 1
execute at @s run tp @s ^ ^ ^0.4 ~ ~3
execute at @s run tp @s[scores={svm_ep.lifetime=..4}] ~ ~0.72 ~
execute at @s run tp @s[scores={svm_ep.lifetime=..6}] ~ ~0.25 ~
execute at @s run tp @s ~ ~-0.53 ~
execute at @s run tp @s[scores={svm_ep.lifetime=10..}] ~ ~-0.23 ~
execute at @s run tp @s[scores={svm_ep.lifetime=15..}] ~ ~-0.23 ~
execute at @s run tp @s[scores={svm_ep.lifetime=20..}] ~ ~-0.23 ~
execute at @s run tp @s[scores={svm_ep.lifetime=25..}] ~ ~-0.23 ~
execute at @s run tp @s[scores={svm_ep.lifetime=30..}] ~ ~-0.23 ~
execute unless block ~ ~ ~ #svm_core:no_hitbox run return run function svm_ep:power/flora/tree_place/temporary/end
execute unless block ~ ~-0.5 ~ #svm_core:no_hitbox run return run function svm_ep:power/flora/tree_place/temporary/end
execute as @s[scores={svm_ep.lifetime=100..}] run return run function svm_ep:power/flora/tree_place/temporary/end