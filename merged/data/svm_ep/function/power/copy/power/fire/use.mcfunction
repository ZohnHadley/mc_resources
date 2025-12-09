
data modify storage svm_ep:item old set from entity @s SelectedItem.id
item modify entity @s[scores={svm_ep.mana=15..}] weapon svm_ep:furnace_smelt
data modify storage svm_ep:item new set from entity @s SelectedItem.id
execute store success score %SUCCESS svm_ep.numbers run data modify storage svm_ep:item new set from storage svm_ep:item old
tag @s add executor
execute if score %SUCCESS svm_ep.numbers matches 0 at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/fire/flame/raycast
tag @s remove executor
tag @s remove end_raycast
tag @s remove end_raycast2
execute if score %SUCCESS svm_ep.numbers matches 1 anchored eyes positioned ^-0.3 ^ ^0.2 positioned ~ ~-0.6 ~ run function svm_ep:power/fire/flame/cook
