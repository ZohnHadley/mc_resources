scoreboard players operation @s svm_ep.extra_ticks += @s svm_ep.tick_acceleration

scoreboard players operation @s svm_ep.extra_tick_power_user += @s svm_ep.extra_ticks
scoreboard players operation @s svm_ep.extra_tick_mana += @s svm_ep.extra_ticks
scoreboard players operation @s svm_ep.extra_tick_fighting_style_user += @s svm_ep.extra_ticks

scoreboard players operation @s svm_ep.extra_ticks %= %100 svm_ep.numbers
scoreboard players reset @s svm_ep.tick_acceleration