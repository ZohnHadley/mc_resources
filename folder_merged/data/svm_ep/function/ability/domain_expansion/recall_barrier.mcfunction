tag @s add svm_ep.domain_expansion_barrier_recalled
scoreboard players add @s svm_ep.kill_after 5
data merge entity @s {transformation:{scale:[0f,0f,0f],translation:[0f,0f,-7f]},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.glass.break master @a[distance=..50] ~ ~ ~ 0.15 0.5 0.1
playsound minecraft:block.glass.break master @a[distance=..50] ~ ~ ~ 0.15 1.5 0.1
particle item{item:black_concrete} ~ ~ ~ 1 1 1 1.5 16 force @a[distance=..150]
