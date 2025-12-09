execute if entity @e[tag=tester] run say updated player version
scoreboard players operation @s svm_ep.player_version = %loaded svm_ep.world_settings


#data remove storage svm_ep:player_data temp
#execute store result storage svm_ep:player_data temp.id int 1 run scoreboard players get @s svm_ep.entity_id
#function svm_ep:system/apply_binded_ability with storage svm_ep:player_data temp

scoreboard players reset @s[scores={svm_ep.ability.using=10001..}] svm_ep.using_move
execute unless entity @s[scores={svm_ep.ability_input=0..}] run scoreboard players set @s svm_ep.ability_input 1
execute as @s[tag=svm_ep.ice_user] run function svm_ep:system/setup_score {from:"%ice_creation_max_default svm_ep.world_settings",to:"@s svm_ep.p.ice_created_max"}
scoreboard players reset @s svm_ep.mana_drain
function #svm_ep:player/on_version_reload
