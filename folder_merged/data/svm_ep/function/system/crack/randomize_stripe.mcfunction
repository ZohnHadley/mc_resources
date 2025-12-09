execute if predicate svm_ep:chance/50_percent run tag @s add 0
execute if predicate svm_ep:chance/50_percent run tag @s add 1

execute at @s run tp @s[tag=0] ~ ~ ~ ~7 ~
execute at @s run tp @s[tag=!0] ~ ~ ~ ~-7 ~
execute at @s run tp @s[tag=1] ~ ~ ~ ~ ~7
execute at @s run tp @s[tag=!1] ~ ~ ~ ~ ~7
tag @s remove 0
tag @s remove 1
execute if predicate svm_ep:chance/75_percent run function svm_ep:system/crack/randomize_stripe