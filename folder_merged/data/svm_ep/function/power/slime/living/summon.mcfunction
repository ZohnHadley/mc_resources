summon minecraft:slime ~ ~ ~ {Tags:["svm_ep.slime_summoned"],Size:1}
setblock ~ ~ ~ air
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 0.5
particle minecraft:flash{color:0xffffffff}
particle minecraft:block{block_state:slime_block} ~ ~ ~ 0.25 0.25 0.25 1.75 30