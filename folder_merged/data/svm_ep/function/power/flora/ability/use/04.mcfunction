execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_04_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown




data remove storage svm_ep:menu power.flora.temp.climate_abilities
data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[0]
execute as @s[advancements={svm_ep:flora_visited_biome/forest=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[1]
execute as @s[advancements={svm_ep:flora_visited_biome/taiga=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[2]
execute as @s[advancements={svm_ep:flora_visited_biome/jungle=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[3]
execute as @s[advancements={svm_ep:flora_visited_biome/desert=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[4]
execute as @s[advancements={svm_ep:flora_visited_biome/mushroom=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[5]
execute as @s[advancements={svm_ep:flora_visited_biome/warped=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[6]
execute as @s[advancements={svm_ep:flora_visited_biome/crimson=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[7]
execute as @s[advancements={svm_ep:flora_visited_biome/plains=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[8]
execute as @s[advancements={svm_ep:flora_visited_biome/ocean=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[9]
execute as @s[advancements={svm_ep:flora_visited_biome/dark_oak=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[10]
execute as @s[advancements={svm_ep:flora_visited_biome/savanna=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[11]
execute as @s[advancements={svm_ep:flora_visited_biome/cherry=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[12]
execute as @s[advancements={svm_ep:flora_visited_biome/mangrove=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[13]
execute as @s[advancements={svm_ep:flora_visited_biome/moss=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[14]
execute as @s[advancements={svm_ep:flora_visited_biome/birch=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[15]
execute as @s[advancements={svm_ep:flora_visited_biome/pale=true}] run data modify storage svm_ep:menu power.flora.temp.climate_abilities append from storage svm_ep:menu power.flora.climate_abilities[16]


function svm_ep:power/flora/selection/ability/dialog with storage svm_ep:menu power.flora.temp

scoreboard players set @s svm_ep.using_move 2450
scoreboard players enable @s svm_ep.z.mid_ability_input