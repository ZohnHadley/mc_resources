execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=50..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

function svm_ep:power/fire/ray/start


scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 70
scoreboard players set @s svm_ep.p.fire_ability_05_delay 24