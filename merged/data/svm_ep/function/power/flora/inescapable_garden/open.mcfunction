playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 1 0

scoreboard players reset @s svm_ep.p.flora_inescapable_garden_power

scoreboard players add @s svm_ep.p.flora_inescapable_garden_castor 1
scoreboard players set @s svm_ep.p.flora_inescapable_garden_mode 1

execute as @s[advancements={svm_ep:flora_visited_biome/forest=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/taiga=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/jungle=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/desert=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/mushroom=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/warped=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/crimson=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/plains=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/ocean=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/dark_oak=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/savanna=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/cherry=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/mangrove=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/moss=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1
execute as @s[advancements={svm_ep:flora_visited_biome/birch=true}] run scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 1


scoreboard players operation @s svm_ep.p.flora_inescapable_garden_power *= %flora_inescapable_garden_power_multiply svm_ep.world_settings
scoreboard players operation @s svm_ep.p.flora_inescapable_garden_power /= %flora_inescapable_garden_power_divide svm_ep.world_settings

scoreboard players add @s svm_ep.p.flora_inescapable_garden_power 150

tag @s add executor

execute at @s as @e[distance=..50,type=!#svm_ep:technical,tag=!executor] run scoreboard players set @s svm_ep.e.inescapable_garden 500
execute at @s as @e[distance=..50,type=!#svm_ep:technical,tag=!executor] run scoreboard players set @s svm_ep.effect 1
execute at @s summon wandering_trader run function svm_ep:power/flora/inescapable_garden/setup
tag @s remove executor
