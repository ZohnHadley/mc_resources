execute if block ~ ~ ~ packed_ice run setblock ~ ~ ~ blue_ice
execute if block ~ ~ ~ ice run setblock ~ ~ ~ packed_ice
execute align xyz run particle minecraft:dust{color:[0.7f,1f,18000000f],scale:2f} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0 10

playsound minecraft:block.glass.break block @a[distance=..20] ~ ~ ~ 0.75 1.4 0.025
