execute unless entity @s[scores={svm_ep.mana=5..}] run return 0
scoreboard players remove @s svm_ep.mana 5
$function svm_ep:power/flora/item_creation/give/$(id)