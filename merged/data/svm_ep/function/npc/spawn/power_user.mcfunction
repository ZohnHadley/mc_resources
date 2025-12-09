execute store result score @s svm_ep.numbers run random value 1..5
execute as @s[scores={svm_ep.numbers=1..3}] run function svm_ep:npc/spawn/power_user_normal
execute as @s[scores={svm_ep.numbers=4..5}] run function svm_ep:npc/spawn/power_user_strong
execute as @s[tag=svm_ep.power_user] run function svm_ep:npc/advanced/power_user/create_moveset
scoreboard players set @s svm_ep.mana 200
team join svm_ep.power_user_mob @s