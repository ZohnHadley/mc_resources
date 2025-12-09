execute as @s[type=player,advancements={svm_ep:unlocked_ability/time/4=false}] run return 0
execute as @s[scores={svm_ep.p.time_ability_04_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

#STAMP
scoreboard players set @s svm_ep.using_move 400

scoreboard players set @s svm_ep.p.time_ability_04_delay 20

scoreboard players set @s svm_ep.numbers 0

execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id

function svm_ep:power/time/stamp/check_if_saved_macro with storage svm_ep:time_saves input

execute unless entity @s[scores={svm_ep.mana=50..}] run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.numbers=0,svm_ep.mana=50..}] run function svm_ep:power/time/stamp/save_location
execute as @s[scores={svm_ep.numbers=0}] run scoreboard players reset @s svm_ep.using_move