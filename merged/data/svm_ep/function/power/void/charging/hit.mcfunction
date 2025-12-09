playsound minecraft:entity.ender_eye.death master @a[distance=..25] ~ ~ ~ 2 0
particle minecraft:flash{color:0xffffffff}
kill @s
scoreboard players reset @a[tag=same_id,scores={svm_ep.using_move=1..100}] svm_ep.using_move