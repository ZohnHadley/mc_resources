scoreboard players set @s svm_ep.effect 1
scoreboard players set @s[scores={svm_ep.e.gravity_strengthen=120..}] svm_ep.e.gravity_strengthen 120

scoreboard players remove @s svm_ep.e.gravity_strengthen 1




execute as @s[scores={svm_ep.e.gravity_strengthen=0}] run function svm_ep:entity/effect/gravity_strengthen_end