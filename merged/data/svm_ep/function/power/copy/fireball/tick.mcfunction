scoreboard players add @s svm_ep.p.copy_ability_05_delay 1

effect give @s slowness 1 2 true

execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s[scores={svm_ep.using_move=..289}] svm_ep.using_move
execute unless entity @s[scores={svm_ep.p.copy_ability_05_count=1..}] run scoreboard players reset @s[scores={svm_ep.using_move=..289}] svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s[scores={svm_ep.using_move=..289}] svm_ep.using_move

execute as @s[scores={svm_ep.using_move=290}] run function svm_ep:power/copy/fireball/shoot
execute as @s[scores={svm_ep.using_move=285}] run function svm_ep:power/copy/fireball/shoot
execute as @s[scores={svm_ep.using_move=280}] run function svm_ep:power/copy/fireball/shoot
scoreboard players reset @s[scores={svm_ep.using_move=..280}] svm_ep.using_move

#scoreboard players remove @s svm_ep.p.copy_ability_05_count 1