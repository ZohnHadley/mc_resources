


particle minecraft:explosion ~ ~ ~ 0.75 0.75 0.75 0 3
execute as @s[scores={svm_ep.p.explosion_small_charge=..10}] run function svm_ep:power/explosion/small/visual/1
execute as @s[scores={svm_ep.p.explosion_small_charge=11..30}] run function svm_ep:power/explosion/small/visual/2
execute as @s[scores={svm_ep.p.explosion_small_charge=31..50}] run function svm_ep:power/explosion/small/visual/3
execute as @s[scores={svm_ep.p.explosion_small_charge=51..70}] run function svm_ep:power/explosion/small/visual/4
execute as @s[scores={svm_ep.p.explosion_small_charge=85..}] run function svm_ep:power/explosion/small/visual/5
tag @s add executor

tag @e[type=!#svm_ep:technical,dx=1,tag=!executor] add hitby
tag @e[type=!#svm_ep:technical,dx=0,tag=!executor] add hitby
tag @e[type=!#svm_ep:technical,distance=..10,tag=!executor] add hitby

scoreboard players operation %DAMAGE svm_ep.numbers = @s svm_ep.p.explosion_small_charge
scoreboard players add %DAMAGE svm_ep.numbers 35
scoreboard players operation %DAMAGE svm_ep.numbers *= %small_explosion_damage_multiplier svm_ep.world_settings
scoreboard players operation %DAMAGE svm_ep.numbers /= %small_explosion_damage_divisor svm_ep.world_settings

execute as @e[tag=hitby] run function svm_ep:power/explosion/small/hitby


tag @s remove executor
tag @s remove explode
scoreboard players reset @s svm_ep.using_move


execute as @s[nbt={OnGround:1b}] run return run scoreboard players reset @s svm_ep.p.explosion_small_charge

scoreboard players set $strength player_motion.api.launch -5800


scoreboard players operation @s svm_ep.p.explosion_small_charge *= %explosion_launch_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.p.explosion_small_charge /= %explosion_launch_divisor svm_ep.world_settings
scoreboard players operation $strength player_motion.api.launch -= @s svm_ep.p.explosion_small_charge

scoreboard players reset @s svm_ep.p.explosion_small_charge

function player_motion:api/launch_looking

