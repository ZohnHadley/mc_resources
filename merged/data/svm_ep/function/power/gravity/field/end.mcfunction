particle minecraft:flash{color:0xffffffff} ~ ~ ~
particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 200

effect give @a[distance=..40] minecraft:blindness 1 0 true
execute as @a[distance=..50] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2
playsound minecraft:block.beacon.deactivate master @a[distance=..50] ~ ~ ~ 0.6 1.7
playsound minecraft:entity.warden.sonic_boom master @a[distance=..40] ~ ~ ~ 0.35 0 0.15
execute on passengers run kill @s
kill @s
