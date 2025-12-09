scoreboard players remove @s svm_ep.p.flora_tree_size1 1

function svm_ep:system/start_random_rotation_x
tp @s ~ ~1 ~ ~ 0

execute at @s if biome ~ ~ ~ #svm_ep:has_wood/acacia run tp @s ^ ^ ^0.3 ~ 0
execute at @s if biome ~ ~ ~ #svm_ep:has_wood/azalea run tp @s ^ ^ ^0.65 ~ 0
execute at @s if biome ~ ~ ~ #svm_ep:has_wood/cherry run tp @s ^ ^ ^0.8 ~ 0

execute at @s[scores={svm_ep.p.flora_tree_size1=1..}] if predicate svm_ep:chance/20_percent unless biome ~ ~ ~ #svm_ep:has_wood/spruce summon marker at @s run function svm_ep:power/flora/tree_place/place_branch
function svm_ep:power/flora/tree_place/place_wood


execute at @s[scores={svm_ep.p.flora_tree_size1=..0}] unless biome ~ ~ ~ #svm_ep:has_wood/spruce positioned ~ ~-1 ~ run function svm_ep:power/flora/tree_place/crown_place
execute at @s[scores={svm_ep.p.flora_tree_size1=..0}] if biome ~ ~ ~ #svm_ep:has_wood/spruce positioned ~ ~-3 ~ run function svm_ep:power/flora/tree_place/crown_place_spruce
kill @s[scores={svm_ep.p.flora_tree_size1=..0}]

execute at @s if block ~ ~ ~ minecraft:bedrock run kill @s
