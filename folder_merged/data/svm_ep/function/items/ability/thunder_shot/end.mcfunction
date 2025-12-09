function svm_ep:items/ability/thunder_shot/summon

execute as @s[tag=svm_ep.thunder_shot_power_infused] positioned ~1 ~ ~ run function svm_ep:items/ability/thunder_shot/summon
execute as @s[tag=svm_ep.thunder_shot_power_infused] positioned ~-1 ~ ~ run function svm_ep:items/ability/thunder_shot/summon
execute as @s[tag=svm_ep.thunder_shot_power_infused] positioned ~ ~ ~1 run function svm_ep:items/ability/thunder_shot/summon
execute as @s[tag=svm_ep.thunder_shot_power_infused] positioned ~ ~ ~-1 run function svm_ep:items/ability/thunder_shot/summon


kill @s