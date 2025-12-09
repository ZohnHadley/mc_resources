scoreboard players operation %cooldown_display ci.math = %cooldown_current ci.math
scoreboard players operation %cooldown_display ci.math /= %20 ci.math
scoreboard players set %show_cooldown ci.math 0
tellraw @s [{"text":"| ","color":"gray"},{"text":"On cooldown! ","color":"red"},{"score":{"name":"%cooldown_display","objective":"ci.math"}},{"text":"s"}]