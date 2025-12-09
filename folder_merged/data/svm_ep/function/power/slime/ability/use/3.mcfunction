execute as @s[type=player,advancements={svm_ep:unlocked_ability/slime/6=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=10..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.slime_ability_03_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

function svm_ep:power/slime/movement/use
scoreboard players set @s svm_ep.p.slime_ability_03_delay 40
scoreboard players add @s svm_ep.used_move 300
