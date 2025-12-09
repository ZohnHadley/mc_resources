scoreboard players operation @s svm_ep.mana_max = startMaxMana svm_ep.gamerule
scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_max

scoreboard players set @s svm_ep.souls 0
scoreboard players set @s svm_ep.deaths 0
scoreboard players operation @s svm_ep.ability_points = startAbilityPoints svm_ep.gamerule

#scoreboard players set @s svm_ep.ability7 9998
#scoreboard players set @s svm_ep.ability8 9999
advancement grant @s only svm_ep:storyline/root

function svm_ep:player/on_version_reload