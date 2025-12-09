$execute unless entity @s[advancements={svm_ep:unlocked_ability/$(ability)=false}] run return run function svm_ep:system/message/ability_unlocked
$execute unless entity @s[scores={svm_ep.ability_points=$(cost)..}] run return run function svm_ep:system/message/not_enough_ability_points {"cost":"$(cost)"}

$function svm_ep:menu/unlock/success {"ability":"$(ability)","cost":"$(cost)"}
#$function svm_ep:menu/unlock/success {"ability":"$(ability)","cost":"$(cost)"}
#$say $(ability)
#$say $(cost)