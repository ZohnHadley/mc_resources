#INPUT - ID + SLOT TO SAVE
#$(id) = Player
#$(slot) = Saved hotbar
$data modify storage svm_ep:ability_hotbar temp set from storage svm_ep:ability_hotbar $(id).$(slot)

execute store result storage svm_ep:ability_hotbar temp.0.id int 1 run scoreboard players get @s svm_ep.ability0
execute store result storage svm_ep:ability_hotbar temp.1.id int 1 run scoreboard players get @s svm_ep.ability1
execute store result storage svm_ep:ability_hotbar temp.2.id int 1 run scoreboard players get @s svm_ep.ability2
execute store result storage svm_ep:ability_hotbar temp.3.id int 1 run scoreboard players get @s svm_ep.ability3
execute store result storage svm_ep:ability_hotbar temp.4.id int 1 run scoreboard players get @s svm_ep.ability4
execute store result storage svm_ep:ability_hotbar temp.5.id int 1 run scoreboard players get @s svm_ep.ability5
execute store result storage svm_ep:ability_hotbar temp.6.id int 1 run scoreboard players get @s svm_ep.ability6
execute store result storage svm_ep:ability_hotbar temp.7.id int 1 run scoreboard players get @s svm_ep.ability7
execute store result storage svm_ep:ability_hotbar temp.8.id int 1 run scoreboard players get @s svm_ep.ability8

$data modify storage svm_ep:ability_hotbar $(id).$(slot) set from storage svm_ep:ability_hotbar temp
