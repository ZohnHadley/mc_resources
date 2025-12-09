scoreboard players reset @s svm_ep.using_move





data merge storage svm_ep:time_saves {"input":{"selector":"@e[distance=..75,type=!#svm_ep:technical,scores={svm_ep.entity_id_slow=1..}]"}}

execute at @s as @a[distance=..75] run tag @s add tped
execute store success storage svm_ep:time_saves input.revert_time int 1 run scoreboard players get @s svm_ep.p.time_revert

execute at @s run function svm_ep:time/return with storage svm_ep:time_saves input
execute as @a[tag=tped] at @s run function svm_ep:power/time/rewind/effect
