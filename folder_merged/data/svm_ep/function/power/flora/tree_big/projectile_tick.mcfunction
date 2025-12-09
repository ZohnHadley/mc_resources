scoreboard players add @s svm_ep.lifetime 1
scoreboard players remove @s svm_ep.p.flora_tree_size 1

execute as @s[tag=svm_ep.flora.tree] at @s run function svm_ep:power/flora/tree_big/tick/tree
execute as @s[tag=svm_ep.flora.branch] at @s run function svm_ep:power/flora/tree_big/tick/branch
execute as @s[tag=svm_ep.flora.root] at @s run function svm_ep:power/flora/tree_big/tick/root

kill @s[type=!player,scores={svm_ep.p.flora_tree_size=..0}]