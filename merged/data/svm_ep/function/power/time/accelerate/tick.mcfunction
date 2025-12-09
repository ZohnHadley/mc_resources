
scoreboard players operation @s svm_ep.tick_acceleration = %acceleration_speed svm_ep.world_settings
scoreboard players operation @s svm_ep.tick_acceleration -= %100 svm_ep.numbers
scoreboard players operation @s svm_ep.tick_acceleration *= @s svm_ep.p.time_accelerated_level
