execute at @s as @e[tag=!executor,distance=..2.5] run damage @s 15 minecraft:mob_projectile by @e[tag=executor,limit=1]
execute at @s as @e[tag=!executor,distance=..4] run damage @s 10 minecraft:mob_projectile by @e[tag=executor,limit=1]
execute at @s as @e[tag=!executor,distance=..5.5] run damage @s 5 minecraft:mob_projectile by @e[tag=executor,limit=1]
scoreboard players add @a[distance=..5] svm_ep.shaking 5
scoreboard players add @a[distance=..10] svm_ep.shaking 5
scoreboard players add @a[distance=..15] svm_ep.shaking 15

particle minecraft:explosion_emitter
particle minecraft:smoke ~ ~ ~ 0 0 0 1.5 100
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.75 30
particle minecraft:flame ~ ~ ~ 0 0 0 2.75 75
execute at @s run particle minecraft:lava ~ ~ ~ 1.7 1.7 1.7 0 50

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.7

execute at @s[nbt={transformation:{scale:[1.05f,1.05f,1.05f]}}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1,CustomName:'[{"text":"meteor"}]'}
execute at @s[nbt={transformation:{scale:[2.05f,2.05f,2.05f]}}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,ignited:1,CustomName:'[{"text":"meteor"}]'}
execute at @s[nbt={transformation:{scale:[3.05f,3.05f,3.05f]}}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,ignited:1,CustomName:'[{"text":"meteor"}]'}
execute at @s[nbt={transformation:{scale:[4.05f,4.05f,4.05f]}}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:5,ignited:1,CustomName:'[{"text":"meteor"}]'}
execute at @s[nbt={transformation:{scale:[5.05f,5.05f,5.05f]}}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:8,ignited:1,CustomName:'[{"text":"meteor"}]'}

