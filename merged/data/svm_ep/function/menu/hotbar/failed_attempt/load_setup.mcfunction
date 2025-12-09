$data modify storage svm_ep:ability_hotbar temp set from storage svm_ep:ability_hotbar $(id).$(slot)

execute store result score @s svm_ep.ability0 run data get storage svm_ep:ability_hotbar temp.0.id 1
execute store result score @s svm_ep.ability1 run data get storage svm_ep:ability_hotbar temp.1.id 1
execute store result score @s svm_ep.ability2 run data get storage svm_ep:ability_hotbar temp.2.id 1
execute store result score @s svm_ep.ability3 run data get storage svm_ep:ability_hotbar temp.3.id 1
execute store result score @s svm_ep.ability4 run data get storage svm_ep:ability_hotbar temp.4.id 1
execute store result score @s svm_ep.ability5 run data get storage svm_ep:ability_hotbar temp.5.id 1
execute store result score @s svm_ep.ability6 run data get storage svm_ep:ability_hotbar temp.6.id 1
execute store result score @s svm_ep.ability7 run data get storage svm_ep:ability_hotbar temp.7.id 1
execute store result score @s svm_ep.ability8 run data get storage svm_ep:ability_hotbar temp.8.id 1

$data modify storage svm_ep:ability_hotbar $(id).$(slot) set from storage svm_ep:ability_hotbar temp
