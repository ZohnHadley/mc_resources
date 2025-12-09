execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.mana=6..}] run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s svm_ep.p.harpie_ability_02_delay 2
scoreboard players add @s svm_ep.used_move 2

scoreboard players add @s svm_ep.mana_drain 15

execute as @s[scores={svm_ep.using_move=95}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=92}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=89}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=86}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=84}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=82}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=80}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=78}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=76}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=74}] run function svm_ep:power/harpie/razor/shoot
execute as @s[scores={svm_ep.using_move=..65}] run function svm_ep:power/harpie/razor/shoot

