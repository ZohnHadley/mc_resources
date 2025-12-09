execute positioned ~ ~ ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~ ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~ ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~ ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~-1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~ ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~ ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~ ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~ ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~ ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~-1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~-1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~-1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~-1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~1 ~-1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~-1 ~-1 ~ run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~-1 ~1 run function svm_ep:power/flora/log_destroy/destroy_log
execute positioned ~ ~-1 ~-1 run function svm_ep:power/flora/log_destroy/destroy_log

execute as @e[tag=!svm_ep.flora_user,type=!#svm_ep:technical,dx=0] run damage @s 1 no_cooldown by @n[tag=svm_ep.flora_user]
execute as @e[tag=!svm_ep.flora_user,type=!#svm_ep:technical,distance=..1.4] run damage @s 1 no_cooldown by @n[tag=svm_ep.flora_user]
execute as @e[tag=!svm_ep.flora_user,type=!#svm_ep:technical,distance=..4.4] run damage @s 4 sweet_berry_bush by @n[tag=svm_ep.flora_user]

tag @s remove log
scoreboard players set @e[tag=svm_ep.flora_log_destroy,distance=..15] svm_ep.lifetime 0
execute if predicate svm_ep:chance/80_percent run kill @s[type=item]