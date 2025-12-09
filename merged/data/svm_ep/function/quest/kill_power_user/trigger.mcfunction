advancement revoke @s from svm_ep:quest/all
execute unless items entity @s container.* *[minecraft:custom_data={svm_ep.item:{id:quest,quest:kill_power_users}}] run return 0
scoreboard players add @s svm_ep.q.kill_power_mobs 1
execute if score @s svm_ep.q.kill_power_mobs < %quest_power_mob_kills svm_ep.world_settings run return 0

scoreboard players reset @s svm_ep.q.kill_power_mobs
scoreboard players add @s svm_ep.ability_points 10