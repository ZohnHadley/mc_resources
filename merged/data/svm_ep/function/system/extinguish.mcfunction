execute at @s[type=player] run summon marker ~ ~ ~ {Tags:["svm_ep.extinguish"]}
execute at @s[type=player] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #svm_ep:no_physical_hitbox
data modify entity @s Fire set value 0