function svm_ep:system/get_rotation
scoreboard players add @s svm_ep.p.flora_climate 1
execute as @s[scores={rot.y=80..}] run scoreboard players remove @s svm_ep.p.flora_climate 2
tag @s add switched
