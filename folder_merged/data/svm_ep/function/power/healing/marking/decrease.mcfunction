scoreboard players remove @s svm_ep.p.healing_marked_for 1
execute at @s if entity @e[tag=svm_ep.healing_user,distance=..100] run scoreboard players set @s svm_ep.p.healing_marked_for 10
scoreboard players reset @s[scores={svm_ep.p.healing_marked_for=..0}] svm_ep.p.healing_marked_by
