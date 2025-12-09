scoreboard players add @s svm_ep.lifetime 1

execute at @s run tp @s[scores={svm_ep.lifetime=..3}] ^ ^ ^0.18
data merge entity @s[scores={svm_ep.lifetime=2}] {teleport_duration:1}
data merge entity @s[scores={svm_ep.lifetime=2}] {transformation:{scale:[2.45f,2.45f,2.45f]},interpolation_duration:3,start_interpolation:-1}
data merge entity @s[scores={svm_ep.lifetime=4}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:4,start_interpolation:-1}

kill @s[scores={svm_ep.lifetime=13..}]
