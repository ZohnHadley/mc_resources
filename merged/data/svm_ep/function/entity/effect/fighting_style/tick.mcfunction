
scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.fighting_style 1
scoreboard players remove @s svm_ep.e.fighting_style_quick_fov 1
execute as @s[scores={svm_ep.e.fighting_style_quick_fov_effect=0}] run function svm_ep:entity/effect/fighting_style/quick_fov/end
execute as @s[scores={svm_ep.e.fighting_style=..0}] run return run function svm_ep:entity/effect/fighting_style/end
