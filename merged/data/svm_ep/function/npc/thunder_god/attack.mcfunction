

execute if entity @e[tag=target,distance=3..6] as @s[tag=svm_ep.awakened] unless entity @s[scores={svm_ep.p.lightning_ability_03_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/3
execute if entity @e[tag=target,distance=..4] as @s[tag=svm_ep.awakened] unless entity @s[scores={svm_ep.p.lightning_ability_08_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/10
execute if entity @e[tag=target,distance=..3] as @s[tag=svm_ep.awakened] unless entity @s[scores={svm_ep.p.lightning_ability_02_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/2


execute if entity @e[tag=target,distance=7..] unless entity @s[scores={svm_ep.p.lightning_ability_04_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] run function svm_ep:power/lightning/ability/use/4
execute if entity @e[tag=target,distance=10..] unless entity @s[scores={svm_ep.p.lightning_ability_01_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] at @e[tag=target] run function svm_ep:power/lightning/ability/use/1
execute if entity @e[tag=target,distance=2..7] unless entity @s[scores={svm_ep.p.lightning_ability_07_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/7
execute if entity @e[tag=target,distance=..4] as @s unless entity @s[scores={svm_ep.p.lightning_ability_08_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/8
execute if entity @e[tag=target,distance=..5] as @s[scores={health=..450}] unless entity @s[scores={svm_ep.p.lightning_ability_06_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/lightning/ability/use/9
