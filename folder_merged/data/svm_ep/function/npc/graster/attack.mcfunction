


execute if entity @e[tag=target,distance=10..] unless entity @s[scores={svm_ep.p.gravity_ability_04_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] at @e[tag=target] run function svm_ep:power/gravity/field/raycast

execute if entity @e[tag=target,distance=..5] unless entity @s[scores={svm_ep.p.gravity_ability_06_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] at @s run function svm_ep:power/gravity/ability/use/6
execute as @s[scores={svm_ep.p.gravity_punch=1..,svm_ep.p.gravity_ability_06_delay=..200}] at @s run function svm_ep:power/gravity/punch/shoot


execute if entity @e[tag=target,distance=..5] unless entity @s[scores={svm_ep.p.gravity_ability_01_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/gravity/ability/use/1
