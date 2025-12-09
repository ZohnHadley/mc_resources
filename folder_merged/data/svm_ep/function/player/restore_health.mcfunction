execute store result score @s svm_ep.deal_damage run attribute @s minecraft:max_health get
scoreboard players operation @s svm_ep.deal_damage -= @s svm_ep.restore_health
function svm_ep:damage/deal_no_mob {"damage":"0","type":"true"}
scoreboard players reset @s svm_ep.restore_health
