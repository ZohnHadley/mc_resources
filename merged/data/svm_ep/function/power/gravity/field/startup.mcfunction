


execute at @s[scores={svm_ep.lifetime=1}] run particle minecraft:dust{color:[0f,0.25f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=2}] run particle minecraft:dust{color:[0.1f,0.3f,0.1f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=3}] run particle minecraft:dust{color:[0.2f,0.35f,0.2f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=4}] run particle minecraft:dust{color:[0.3f,0.4f,0.3f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=5}] run particle minecraft:dust{color:[0.4f,0.45f,0.4f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=6}] run particle minecraft:dust{color:[0f,0.5f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=7}] run particle minecraft:dust{color:[0f,0.55f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=8}] run particle minecraft:dust{color:[0f,0.6f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=9}] run particle minecraft:dust{color:[0f,0.65f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=10}] run particle minecraft:dust{color:[0f,0.75f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=11}] run particle minecraft:dust{color:[0f,0.85f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=12}] run particle minecraft:dust{color:[0f,0.95f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=13}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=14}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=15}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=16}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=17}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=18}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute at @s[scores={svm_ep.lifetime=19}] run particle minecraft:dust{color:[0f,1.0f,0f],scale:3.0f} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a

execute at @s[scores={svm_ep.lifetime=20}] run particle minecraft:flash{color:0xffffffff} ~ ~ ~
execute at @s[scores={svm_ep.lifetime=16}] run effect give @e[distance=..8] resistance 1 3 true
execute at @s[scores={svm_ep.lifetime=20}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 100
execute at @s[scores={svm_ep.lifetime=20}] run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~ ~ 1 1.5 0.15

execute at @s[scores={svm_ep.lifetime=38}] run effect give @a[distance=..40] minecraft:blindness 1 0 true
execute at @s[scores={svm_ep.lifetime=38}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 3 250
execute at @s[scores={svm_ep.lifetime=38}] run scoreboard players add @a[distance=..40] svm_ep.shaking 15
execute at @s[scores={svm_ep.lifetime=38}] run playsound minecraft:entity.warden.sonic_boom master @a[distance=..40] ~ ~ ~ 0.5 1.2 0.25