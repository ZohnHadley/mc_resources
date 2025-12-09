#execute at @s if entity @e[tag=svm_ep.bush_display,distance=..0.3] run kill @s
item replace entity @s container.0 with minecraft:oak_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/azalea run item replace entity @s container.0 with minecraft:azalea_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/azalea if predicate svm_ep:chance/33_percent run item replace entity @s container.0 with minecraft:flowering_azalea_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/birch run item replace entity @s container.0 with minecraft:birch_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/spruce run item replace entity @s container.0 with minecraft:spruce_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/cherry run item replace entity @s container.0 with minecraft:cherry_leaves
execute if biome ~ ~ ~ #svm_ep:has_wood/crimson run item replace entity @s container.0 with minecraft:nether_wart_block
execute if biome ~ ~ ~ #svm_ep:has_wood/warped run item replace entity @s container.0 with minecraft:warped_wart_block

#execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:3,Tags:["svm_ep.barrier","svm_ep.flora_barrier"]}

function svm_ep:system/set_random_rotation
tag @s add svm_ep.bush_display
data merge entity @s {transformation:{scale:[0.9f,0.9f,0.9f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[0.4f,0.4f,0.4f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[0.6f,0.6f,0.6f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[0.7f,0.7f,0.7f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[0.8f,0.8f,0.8f]}}


data merge entity @s {transformation:{scale:[2.9f,2.9f,2.9f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[2.4f,2.4f,2.4f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[2.5f,2.5f,2.5f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[2.6f,2.6f,2.6f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[2.7f,2.7f,2.7f]}}
execute if predicate svm_ep:chance/25_percent run data merge entity @s {transformation:{scale:[2.8f,2.8f,2.8f]}}
data merge entity @s {interpolation_duration:1,start_interpolation:-1}
