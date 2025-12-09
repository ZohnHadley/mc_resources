#MANA SLOWER REGEN
scoreboard players remove @s[scores={svm_ep.food=10..,svm_ep.used_move=1..}] svm_ep.used_move 1
scoreboard players set @s[scores={svm_ep.used_move=2000..}] svm_ep.used_move 2000
scoreboard players remove @s[scores={svm_ep.golden_beetroot_boost=1..}] svm_ep.golden_beetroot_boost 1

#MANA

execute unless score @s svm_ep.mana >= @s svm_ep.mana_max run function svm_ep:mana/not_max 


execute as @s[scores={svm_ep.mana_drain=100..}] run function svm_ep:mana/drain

scoreboard players remove @s[scores={svm_ep.extra_tick_mana=100..}] svm_ep.extra_tick_mana 100
execute as @s[scores={svm_ep.extra_tick_mana=100..}] run function svm_ep:mana/tick