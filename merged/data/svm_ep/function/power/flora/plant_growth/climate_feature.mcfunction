scoreboard players operation %FORESTIFY_CLIMATE svm_ep.world_settings = @s svm_ep.p.flora_climate
function svm_ep:power/flora/forestify/place_climate_feature
particle minecraft:trial_spawner_detection ~ ~ ~ 2 0.2 2 0 15
playsound minecraft:block.grass.fall master @a[distance=..25] ~ ~ ~ 1 0.5 0.6
scoreboard players add @s svm_ep.mana_drain 210