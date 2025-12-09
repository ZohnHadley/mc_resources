scoreboard players reset @s svm_ep.joined
scoreboard players reset @s svm_ep.z.ability_input
execute unless score @s svm_ep.player_version = %loaded svm_ep.world_settings run function svm_ep:player/on_version_reload
