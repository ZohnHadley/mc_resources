scoreboard players add @s svm_ep.using_move 1
scoreboard players remove @s svm_ep.p.fire_ray 1

scoreboard players add @s svm_ep.shaking 1
effect give @s slowness 1 6 true

execute at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1.25 1.6
execute at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.25 2

scoreboard players remove @s[scores={svm_ep.p.fire_arms=1..}] svm_ep.used_move 1
scoreboard players add @s svm_ep.used_move 3
#scoreboard players add @s svm_ep.mana_drain 1
#execute as @s[scores={svm_ep.mana_drain=2..}] run scoreboard players reset @s svm_ep.mana_drain
scoreboard players add @s[scores={svm_ep.p.fire_arms=1..}] svm_ep.mana 1
scoreboard players remove @s svm_ep.mana 2

scoreboard players add @s svm_ep.p.fire_ability_05_delay 5

scoreboard players reset @s[scores={svm_ep.p.fire_ray=..0}] svm_ep.using_move
execute as @s[scores={svm_ep.p.fire_ray=12..}] unless predicate svm_ep:holding_ability run return run scoreboard players remove @s svm_ep.p.fire_ray 8
tag @s add executor
execute at @s anchored eyes positioned ^ ^-0.45 ^0.95 run function svm_ep:power/fire/ray/raycast
function svm_ep:system/macro/command {command:"emotes play burning_ray_ray"}

execute at @s anchored eyes positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
tag @s remove executor
tag @s remove end_raycast

scoreboard players reset @s[scores={svm_ep.mana=..2}] svm_ep.using_move