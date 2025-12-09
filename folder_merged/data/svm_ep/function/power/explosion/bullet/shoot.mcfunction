execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..30] ~ ~ ~ 2 1.15
effect clear @s slowness
tag @s remove explode
execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.explosion_bullet"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players operation @e[tag=new] svm_ep.p.explosion_bullet_charge = @s svm_ep.p.explosion_bullet_charge
scoreboard players operation @e[tag=new] svm_ep.lifetime -= @s svm_ep.p.explosion_bullet_charge
scoreboard players set @e[tag=new] svm_ep.projectile 15
effect give @s[scores={svm_ep.using_move=..776}] minecraft:resistance 1 9 true
effect give @s minecraft:slowness 1 0 true
effect give @s[scores={svm_ep.using_move=..786}] minecraft:slowness 1 1 true
effect give @s[scores={svm_ep.using_move=..776}] minecraft:slowness 1 2 true
effect give @s[scores={svm_ep.using_move=..766}] minecraft:slowness 1 3 true
effect give @s[scores={svm_ep.using_move=..756}] minecraft:slowness 1 4 true
effect give @s[scores={svm_ep.using_move=..746}] minecraft:slowness 1 5 true
effect give @s[scores={svm_ep.using_move=..736}] minecraft:slowness 1 6 true
scoreboard players add @a[distance=..15] svm_ep.shaking 10

execute at @s[scores={svm_ep.using_move=756..766}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^3 run summon tnt ~ ~ ~ {fuse:0s}
execute at @s[scores={svm_ep.using_move=746..755}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^2.5 run summon tnt ~ ~ ~ {fuse:0s}
execute at @s[scores={svm_ep.using_move=736..745}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^2 run summon tnt ~ ~ ~ {fuse:0s}
execute at @s[scores={svm_ep.using_move=726..735}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^1.5 run summon tnt ~ ~ ~ {fuse:0s}
execute at @s[scores={svm_ep.using_move=716..725}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^1 run summon tnt ~ ~ ~ {fuse:0s}
execute at @s[scores={svm_ep.using_move=..715}] unless score doBlocksDestroy svm_ep.gamerule matches 0 anchored eyes positioned ^ ^ ^0.5 run summon tnt ~ ~ ~ {fuse:0s}

tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @s anchored eyes positioned ^ ^ ^0.85 run tp @e[tag=new] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^0.85 run particle minecraft:flame ~ ~ ~ 0 0 0 1 115
execute at @s anchored eyes positioned ^ ^ ^0.85 run particle minecraft:smoke ~ ~ ~ 0 0 0 2 125
execute at @s anchored eyes positioned ^ ^ ^0.85 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 1 28
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s svm_ep.p.explosion_bullet_charge