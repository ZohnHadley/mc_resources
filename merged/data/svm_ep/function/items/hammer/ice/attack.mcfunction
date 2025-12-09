tag @s add executor

execute at @s as @e[distance=..7,type=!#svm_ep:technical,sort=nearest] at @s on attacker if entity @s[tag=executor] as @e[sort=nearest,limit=1] run function svm_ep:items/hammer/ice/hitby
execute at @s as @e[distance=..7,type=!#svm_ep:technical,sort=nearest,scores={svm_ep.e.freezed_display_order=0..}] run function svm_ep:entity/effect/freezed/clear_model
tag @s remove executor