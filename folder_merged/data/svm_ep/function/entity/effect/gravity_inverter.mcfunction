scoreboard players set @s svm_ep.effect 1

scoreboard players remove @s svm_ep.e.gravity_inverter 1




execute as @s[scores={svm_ep.e.gravity_inverter=0}] run function svm_ep:entity/effect/gravity_inverter_end