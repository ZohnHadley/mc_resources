#execute as @s[type=player,advancements={svm_ep:unlocked_ability/flora/16=false}] run return 0
scoreboard players add @s svm_ep.p.flora_inescapable_garden_mode 1


scoreboard players set @s[scores={svm_ep.p.flora_inescapable_garden_mode=4..}] svm_ep.p.flora_inescapable_garden_mode 1
scoreboard players set @s svm_ep.p.flora_inescapable_garden_mode_change_tick 40