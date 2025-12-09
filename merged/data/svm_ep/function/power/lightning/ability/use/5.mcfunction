execute as @s[type=player,advancements={svm_ep:unlocked_ability/lightning/3=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=10..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.lightning_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


scoreboard players set @s svm_ep.p.lightning_ability_05_delay 3
scoreboard players add @s svm_ep.p.lightning_placed_count 1
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.p.lightning_ability_05_delay 35
scoreboard players remove @s svm_ep.mana 10
scoreboard players add @s svm_ep.used_move 40

tag @s add executor
execute anchored eyes positioned ^ ^ ^1 run function svm_ep:power/lightning/lightning_place/raycast

tag @s remove executor
tag @s remove end_raycast
