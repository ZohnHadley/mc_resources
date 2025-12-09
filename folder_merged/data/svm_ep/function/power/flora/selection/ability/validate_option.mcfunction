execute as @s[scores={svm_ep.z.mid_ability_input=16}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=17},advancements={svm_ep:flora_visited_biome/forest=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=18},advancements={svm_ep:flora_visited_biome/taiga=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=19},advancements={svm_ep:flora_visited_biome/jungle=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=20},advancements={svm_ep:flora_visited_biome/desert=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=21},advancements={svm_ep:flora_visited_biome/mushroom=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=22},advancements={svm_ep:flora_visited_biome/warped=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=23},advancements={svm_ep:flora_visited_biome/crimson=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=24},advancements={svm_ep:flora_visited_biome/plains=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=25},advancements={svm_ep:flora_visited_biome/ocean=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=26},advancements={svm_ep:flora_visited_biome/dark_oak=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=27},advancements={svm_ep:flora_visited_biome/savanna=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=28},advancements={svm_ep:flora_visited_biome/cherry=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=29},advancements={svm_ep:flora_visited_biome/mangrove=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=30},advancements={svm_ep:flora_visited_biome/moss=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=31},advancements={svm_ep:flora_visited_biome/birch=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
execute as @s[scores={svm_ep.z.mid_ability_input=32},advancements={svm_ep:flora_visited_biome/pale=true}] run scoreboard players operation @s svm_ep.p.flora_selected_climate_ability = @s svm_ep.z.mid_ability_input
scoreboard players operation @s svm_ep.z.mid_ability_input = @s svm_ep.selected_ability
scoreboard players operation @s svm_ep.selected_ability = @s svm_ep.p.flora_selected_climate_ability
scoreboard players reset @s svm_ep.using_move
function svm_ep:power/flora/use
scoreboard players operation @s svm_ep.selected_ability = @s svm_ep.z.mid_ability_input
scoreboard players reset @s svm_ep.z.mid_ability_input
dialog clear @s

scoreboard players set @s svm_ep.p.flora_ability_04_delay 10
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_04_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_04_delay += %WORLD svm_ep.tick