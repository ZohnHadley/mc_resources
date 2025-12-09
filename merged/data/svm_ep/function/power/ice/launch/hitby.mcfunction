tag @s remove hitby
execute store result score @s svm_ep.deal_damage run scoreboard players get @e[tag=same_id,limit=1] svm_ep.level
execute run scoreboard players operation @s svm_ep.deal_damage /= %launched_ice_damage_divisor svm_ep.world_settings

function svm_ep:damage/deal_normal {"damage":"8","attacker":"@e[limit=1,tag=same_id]","type":"mob_attack"}
