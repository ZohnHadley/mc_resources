execute at @s as @e[type=item,distance=..5] run tag @s add svm_ep.item_near_dead_player

scoreboard players reset @s svm_ep.died

scoreboard players reset @s[gamemode=!spectator] svm_ep.using_move

execute if score doLoseHearts svm_ep.gamerule matches 1 run scoreboard players remove @s[scores={svm_ep.health_boost=1..}] svm_ep.health_boost 1
execute if score doLoseMana svm_ep.gamerule matches 1 run scoreboard players remove @s svm_ep.mana_max 5
scoreboard players set @s[scores={svm_ep.mana_max=..100}] svm_ep.mana_max 100
scoreboard players set @s[scores={svm_ep.e.accelerated=2..}] svm_ep.e.accelerated 2
scoreboard players set @s svm_ep.p.time_accelerated_level 1
scoreboard players set @s svm_ep.effect 1

scoreboard players reset @s svm_ep.e.inescapable_garden
scoreboard players reset @s svm_ep.p.flora_junglification
scoreboard players reset @s svm_ep.p.harpie_grabbed_by_id
scoreboard players reset @s svm_ep.p.fire_arms
scoreboard players reset @s svm_ep.time_stopping
scoreboard players reset @s svm_ep.time_stopped
scoreboard players reset @s svm_ep.e.haunted
tag @s remove svm_ep.in_domain
function a:get_mana

function #svm_ep:died
