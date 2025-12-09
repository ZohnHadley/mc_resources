
execute as @s[tag=!switched] run function svm_ep:power/flora/selection/switch
tag @s remove switched
scoreboard players set @s[scores={svm_ep.p.flora_climate=..-1}] svm_ep.p.flora_climate 16
scoreboard players reset @s[scores={svm_ep.p.flora_climate=17..}] svm_ep.p.flora_climate
execute as @s[scores={svm_ep.p.flora_climate=1},advancements={svm_ep:flora_visited_biome/forest=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=2},advancements={svm_ep:flora_visited_biome/taiga=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=3},advancements={svm_ep:flora_visited_biome/jungle=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=4},advancements={svm_ep:flora_visited_biome/desert=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=5},advancements={svm_ep:flora_visited_biome/mushroom=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=6},advancements={svm_ep:flora_visited_biome/warped=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=7},advancements={svm_ep:flora_visited_biome/crimson=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=8},advancements={svm_ep:flora_visited_biome/plains=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=9},advancements={svm_ep:flora_visited_biome/ocean=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=10},advancements={svm_ep:flora_visited_biome/dark_oak=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=11},advancements={svm_ep:flora_visited_biome/savanna=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=12},advancements={svm_ep:flora_visited_biome/cherry=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=13},advancements={svm_ep:flora_visited_biome/mangrove=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=14},advancements={svm_ep:flora_visited_biome/moss=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=15},advancements={svm_ep:flora_visited_biome/birch=false}] run function svm_ep:power/flora/selection/switch
execute as @s[scores={svm_ep.p.flora_climate=16},advancements={svm_ep:flora_visited_biome/pale=false}] run function svm_ep:power/flora/selection/switch
execute as @s[tag=switched] run function svm_ep:power/flora/selection/use
