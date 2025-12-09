execute as @s[type=player,advancements={svm_ep:unlocked_ability/slime/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.slime_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 5
function svm_ep:power/slime/rain/start
scoreboard players add @s svm_ep.used_move 200