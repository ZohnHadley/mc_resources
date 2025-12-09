tag @s add scroll_offhand
tag @s[tag=!svm_ep.power_user] add powerless
#DELETE
execute as @s[tag=svm_ep.power_user] run function svm_ep:power/delete_power

#CONSUME
item modify entity @s[tag=!powerless,tag=scroll_offhand] weapon.offhand svm_ep:consume

tag @s remove powerless
tag @s remove scroll_offhand
