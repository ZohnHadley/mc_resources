execute unless block ~ ~ ~ slime_block run return run kill @s

execute if predicate svm_ep:chance/25_percent run particle dust{color:[0.45f,0.95f,0.4f],scale:1f} ~ ~ ~ 0.65 0.65 0.65 0 1

execute unless entity @s[nbt={Age:2}] run return 0

playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 0.01 0.7
setblock ~ ~ ~ air
particle dust{color:[0.35f,0.8f,0.3f],scale:0.75f} ~ ~ ~ 0.45 0.45 0.45 0 5
particle dust{color:[0.45f,0.95f,0.4f],scale:1f} ~ ~ ~ 0.65 0.65 0.65 0 5
kill @s