scoreboard players operation @s svm_ep.numbers = @s svm_ep.level
scoreboard players set @s svm_ep.using_move 305
scoreboard players operation @s svm_ep.numbers /= %extra_explosion_train_divisor svm_ep.world_settings

scoreboard players operation @s svm_ep.using_move += @s svm_ep.numbers

scoreboard players set @s[scores={svm_ep.using_move=500..}] svm_ep.using_move 500