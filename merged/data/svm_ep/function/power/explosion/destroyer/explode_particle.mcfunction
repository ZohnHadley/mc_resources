scoreboard players add @s svm_ep.lifetime 1
item replace entity @s container.0 with minecraft:white_stained_glass
data merge entity @s[scores={svm_ep.lifetime=2}] {transformation:{scale:[80f,80f,80f]},interpolation_duration:30,start_interpolation:-1}

kill @s[scores={svm_ep.lifetime=20..}]