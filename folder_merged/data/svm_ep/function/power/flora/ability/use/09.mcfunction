execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:unlocked_ability/flora/9=false}] run return 0






data remove storage svm_ep:menu power.flora.temp.item_climates
data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[0]
execute as @s[advancements={svm_ep:flora_visited_biome/forest=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[1]
execute as @s[advancements={svm_ep:flora_visited_biome/taiga=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[2]
execute as @s[advancements={svm_ep:flora_visited_biome/jungle=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[3]
execute as @s[advancements={svm_ep:flora_visited_biome/desert=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[4]
execute as @s[advancements={svm_ep:flora_visited_biome/mushroom=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[5]
execute as @s[advancements={svm_ep:flora_visited_biome/warped=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[6]
execute as @s[advancements={svm_ep:flora_visited_biome/crimson=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[7]
execute as @s[advancements={svm_ep:flora_visited_biome/plains=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[8]
execute as @s[advancements={svm_ep:flora_visited_biome/ocean=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[9]
execute as @s[advancements={svm_ep:flora_visited_biome/dark_oak=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[10]
execute as @s[advancements={svm_ep:flora_visited_biome/savanna=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[11]
execute as @s[advancements={svm_ep:flora_visited_biome/cherry=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[12]
execute as @s[advancements={svm_ep:flora_visited_biome/mangrove=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[13]
execute as @s[advancements={svm_ep:flora_visited_biome/moss=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[14]
execute as @s[advancements={svm_ep:flora_visited_biome/birch=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[15]
execute as @s[advancements={svm_ep:flora_visited_biome/pale=true}] run data modify storage svm_ep:menu power.flora.temp.item_climates append from storage svm_ep:menu power.flora.item_climates[16]


function svm_ep:power/flora/item_creation/dialog with storage svm_ep:menu power.flora.temp

scoreboard players set @s svm_ep.using_move 2600
scoreboard players enable @s svm_ep.z.mid_ability_input