scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.accelerated 1
execute store result storage svm_ep:numbers input2.hunger_level byte 0.5 run scoreboard players get @s svm_ep.p.time_accelerated_level
function svm_ep:power/time/accelerate/give_hunger with storage svm_ep:numbers input2
execute as @s[tag=svm_ep.time_user] run function svm_ep:power/time/accelerate/tick
execute as @s[scores={svm_ep.e.accelerated=0}] run function svm_ep:entity/effect/accelerated_end