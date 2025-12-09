
scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.fighting_style_awakening 1
execute as @s[scores={svm_ep.e.fighting_style_awakening=..0}] run return run function svm_ep:entity/effect/fighting_style_awakening/end
