
scoreboard players remove %METEOR_RAIN svm_ep.world_settings 1



execute in minecraft:overworld if predicate svm_ep:chance/33_percent at @r positioned ~ -120 ~ run function svm_ep:power/4fun/meteor/spawn {"r":"120"}
execute in svm_ep:paradise if predicate svm_ep:chance/33_percent at @r positioned ~ -120 ~ run function svm_ep:power/4fun/meteor/spawn {"r":"120"}


execute if score %METEOR_RAIN svm_ep.world_settings matches 500.. in minecraft:overworld if predicate svm_ep:chance/50_percent at @r positioned ~ -120 ~ run function svm_ep:power/4fun/meteor/spawn {"r":"120"}
execute if score %METEOR_RAIN svm_ep.world_settings matches 500.. in svm_ep:paradise if predicate svm_ep:chance/50_percent at @r positioned ~ -120 ~ run function svm_ep:power/4fun/meteor/spawn {"r":"120"}