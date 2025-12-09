#power ability mana_cost cooldown_name cooldown

$execute as @s[type=player,advancements={svm_ep:unlocked_ability/$(power)/$(ability)=false}] run return 0
$execute unless entity @s[scores={svm_ep.mana=$(mana_cost)..}] run return run function svm_ep:system/message/not_enough_mana
$execute as @s[scores={svm_ep.p.$(power)_ability_$(cooldown_name)_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

$scoreboard players remove @s svm_ep.mana $(mana_cost)
$scoreboard players add @s svm_ep.used_move $(mana_cost)
$scoreboard players set @s svm_ep.p.$(power)_ability_$(cooldown_name)_delay $(cooldown)
$function svm_ep:power/$(power)/ability/use/$(ability)


