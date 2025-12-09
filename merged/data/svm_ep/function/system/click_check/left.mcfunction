#function svm_ep:player/hurt_entity
advancement revoke @s only input:player_hurt_entity/tick

execute as @s[scores={svm_ep.p.gravity_punch=1..},tag=svm_ep.gravity_user] run function svm_ep:power/gravity/punch/shoot

scoreboard players reset @s svm_ep.p.gravity_punch

execute as @e[type=interaction,tag=svm_ep.click_check] run data remove entity @s attack
