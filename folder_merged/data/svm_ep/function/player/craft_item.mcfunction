clear @s *[minecraft:custom_data~{svm_ep.item_to_clear:1b}]

#advancement revoke @s only svm_ep:craft/hardened_sword
#advancement revoke @s only svm_ep:craft/gauntlet
#advancement revoke @s only svm_ep:craft/nunchucks
#advancement revoke @s only svm_ep:craft/lightning_scroll
#advancement revoke @s only svm_ep:craft/jungle_staff
#advancement revoke @s only svm_ep:craft/flora_scroll
#advancement revoke @s only svm_ep:craft/slime_scroll
#advancement revoke @s only svm_ep:craft/explosion_scroll
#advancement revoke @s only svm_ep:craft/power_reseter
#advancement revoke @s only svm_ep:craft/rainbow_paper
#advancement revoke @s only svm_ep:craft/ice_scroll
#advancement revoke @s only svm_ep:craft/battle_bamboo
#advancement revoke @s only svm_ep:craft/gravity_scroll
#advancement revoke @s only svm_ep:craft/harpie_scroll
#advancement revoke @s only svm_ep:craft/dimension_traveler_scroll
#advancement revoke @s only svm_ep:craft/fire_scroll
#advancement revoke @s only svm_ep:craft/void_scroll

advancement revoke @s from svm_ep:craft/all
execute at @s run playsound minecraft:block.anvil.use block @a[distance=..20] ~ ~ ~ 0.7 1.3
execute at @s run playsound minecraft:entity.firework_rocket.twinkle block @a[distance=..30] ~ ~ ~ 1.3 1
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0 0 0 0.6 60
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~