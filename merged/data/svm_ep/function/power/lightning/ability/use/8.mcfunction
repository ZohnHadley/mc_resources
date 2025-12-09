scoreboard players set @s svm_ep.p.lightning_ability_08_delay 30
scoreboard players add @s svm_ep.used_move 350
scoreboard players set @s svm_ep.using_move 500
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] svm_ep.using_move 1

