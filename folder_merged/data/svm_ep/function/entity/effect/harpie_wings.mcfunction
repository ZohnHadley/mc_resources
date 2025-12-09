scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.harpie_wings 1


execute as @s[scores={svm_ep.e.harpie_wings=0}] run function svm_ep:entity/effect/harpie_wings_end