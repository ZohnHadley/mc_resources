#execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_01_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


scoreboard players add @s svm_ep.used_move 10
scoreboard players set @s svm_ep.p.fire_ability_01_delay 2
scoreboard players remove @s svm_ep.mana 5

#CHECK FOR SMELTABLE
data modify storage svm_ep:item old set from entity @s SelectedItem.id
item modify entity @s[scores={svm_ep.mana=15..}] weapon svm_ep:furnace_smelt
data modify storage svm_ep:item new set from entity @s SelectedItem.id
execute store success score %SUCCESS svm_ep.numbers run data modify storage svm_ep:item new set from storage svm_ep:item old

execute if score %SUCCESS svm_ep.numbers matches 1 anchored eyes positioned ^-0.3 ^ ^0.2 positioned ~ ~-0.6 ~ run return run function svm_ep:power/fire/flame/cook
scoreboard players set @s svm_ep.using_move 950