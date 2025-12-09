
execute as @s[scores={svm_ep.lifetime=2750..}] run return run kill @s[scores={svm_ep.lifetime=3480..}]
scoreboard players set @s svm_ep.lifetime 2750
data merge entity @s {transformation:{scale:[0f,0f,0f]},interpolation_duration:40,start_interpolation:-1}
