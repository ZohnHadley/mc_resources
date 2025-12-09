tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.lightning_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run tp @e[tag=same_id] ~ ~ ~

execute as @e[tag=same_id] at @s anchored eyes positioned ^ ^ ^15 run summon minecraft:marker ~ ~ ~ {Tags:["rotator0","kill"]}
execute at @s anchored eyes positioned ^ ^ ^17 run summon minecraft:marker ~ ~ ~ {Tags:["rotator1","kill"]}
execute as @e[tag=rotator1] at @s run tp @s ^ ^ ^0.25 facing entity @e[tag=rotator0,limit=1]
execute at @s run tp @s ~ ~ ~ facing entity @e[tag=rotator1,limit=1]

tp @e[tag=same_id] @s

execute at @s run particle minecraft:sonic_boom
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..50] ~ ~ ~ 1 1.4

function svm_ep:power/lightning/blast/move
function svm_ep:power/lightning/blast/move
function svm_ep:power/lightning/blast/move
scoreboard players set @e[tag=same_id] svm_ep.using_move 1050
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.85 ~
execute at @s run effect give @a[distance=..30] minecraft:night_vision 3 0 true


kill @e[tag=kill]
tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=48..}]