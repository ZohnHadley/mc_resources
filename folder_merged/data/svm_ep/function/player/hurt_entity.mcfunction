execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.ice_breaker:1b}] at @s run function svm_ep:items/hammer/ice/attack

execute as @s[scores={svm_ep.time_stopping=1..}] run function svm_ep:time/attack
execute as @s[scores={svm_ep.attack_entity_action=1..}] run function svm_ep:player/attack_entity_action
execute as @s[scores={svm_ep.using_move=101..200},tag=svm_ep.dimension_traveler_user] run function svm_ep:power/dimension_traveler/gate/shoot
execute as @s[scores={svm_ep.p.gravity_revert=1..},tag=svm_ep.gravity_user] at @s run function svm_ep:power/gravity/revert/punch_mob
execute as @s[scores={svm_ep.p.ice_freeze=1..},tag=svm_ep.ice_user] at @s run function svm_ep:power/ice/freeze/punch_mob
execute as @s[scores={svm_ep.using_move=101001..101100}] run function svm_ep:non_power/punch/punch
execute as @s[scores={svm_ep.p.fire_arms=1..},tag=svm_ep.fire_user] run function svm_ep:power/fire/arms/damage_entity
execute as @s[scores={svm_ep.p.fire_barrage_bullets=1..},tag=svm_ep.fire_user] run function svm_ep:power/fire/barrage/shoot

execute as @s[scores={svm_ep.charged_hammer=1..}] at @s run function svm_ep:items/hammer/hit
execute as @s[scores={svm_ep.charged_tengu=1..}] at @s run function svm_ep:items/tengu/hit

#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.katana:{}}] unless entity @s[scores={svm_ep.e.fighting_style=0..}] unless entity @s[scores={svm_ep.check_click=1..}] run function svm_ep:items/sword_slash
#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.gauntlet:{}}] unless entity @s[scores={svm_ep.using_move=10000..}] as @s[scores={svm_ep.checked_click=..-2}] anchored eyes positioned ^ ^ ^2 run function svm_ep:items/punch_impact
tag @s remove svm_ep.check_click
execute as @s[team=svm_ep.cherry_guardians] run function svm_ep:team/cherry_guardians/attack

function #svm_ep:player_hurt_entity