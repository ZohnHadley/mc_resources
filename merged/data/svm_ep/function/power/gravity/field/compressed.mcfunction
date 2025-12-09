scoreboard players remove @s svm_ep.p.gravity_field_compress 1

scoreboard players set @s svm_ep.lifetime 35
execute as @s[scores={svm_ep.p.gravity_field_strength=..7}] run return run scoreboard players set @s svm_ep.p.gravity_field_strength 7
scoreboard players remove @s svm_ep.p.gravity_field_strength 1