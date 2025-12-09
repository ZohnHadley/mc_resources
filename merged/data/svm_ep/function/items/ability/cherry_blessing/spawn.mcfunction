scoreboard players set %fail svm_ep.numbers 1
execute as @e[distance=..15,type=!#svm_ep.technical] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run function svm_ep:items/ability/cherry_blessing/spawn_as_owner
execute if score %fail svm_ep.numbers matches 1 run return 0
setblock ~ ~ ~ air
scoreboard players add @s svm_ep.lifetime 6
function svm_ep:npc/spawn/cherry_guardian
scoreboard players set @n[tag=svm_ep.npc_cherry_guardian] svm_ep.kill_after 1200
particle minecraft:cherry_leaves ~ ~2 ~ 1 0.1 1 0.5 10
particle minecraft:flash{color:0xffffffff}
playsound minecraft:block.pink_petals.break master @a[distance=..25] ~ ~ ~ 1 1 0.2
playsound minecraft:block.conduit.attack.target master @a[distance=..25] ~ ~ ~ 0.7 2 0.2
execute store result entity @s Rotation[0] double 1 run random value 0..360
