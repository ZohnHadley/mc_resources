particle minecraft:crit ~ ~1 ~ 0 0 0 11 100
playsound minecraft:entity.wither.death master @a[distance=..70] ~ ~ ~ 0.4 0.74
effect give @e[distance=..60] minecraft:slowness 1 0 true
playsound minecraft:entity.wither.break_block master @a[distance=..70] ~ ~ ~ 0.4 0.04
playsound minecraft:block.beacon.deactivate master @a[distance=..70] ~ ~ ~ 1.44 0.04


particle minecraft:dust{color:[0.5f,1f,0.2f],scale:2f} ~ ~ ~ 12 12 12 0 33 force @a[distance=..70]
particle minecraft:dust{color:[0.4f,0.8f,0.1f],scale:2f} ~ ~ ~ 12 12 12 0 33 force @a[distance=..70]
particle minecraft:dust{color:[0.35f,0.5f,0.15f],scale:2f} ~ ~ ~ 12 12 12 0 33 force @a[distance=..70]
particle minecraft:spore_blossom_air ~ ~ ~ 12 12 12 0 66 force @a[distance=..70]


kill @s