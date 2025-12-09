tp @s ^ ^ ^0.8 ~ ~0.5
function svm_ep:power/flora/tree_place/place_wood

#execute as @s[scores={svm_ep.p.flora_tree_size=0}] run function svm_ep:power/flora/tree_big/tree/spruce/crown
execute as @s[scores={svm_ep.p.flora_tree_size=..1}] positioned ^ ^ ^0.8 run function svm_ep:power/flora/tree_big/tree/spruce/crown