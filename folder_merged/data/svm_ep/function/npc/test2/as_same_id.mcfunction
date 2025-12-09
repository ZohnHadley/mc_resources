scoreboard players set @s svm_ep.lifetime 0
tp @s ~ ~0.75 ~
data modify entity @s Rotation[0] set from entity @e[tag=executor,limit=1,sort=nearest] Rotation[0]

#STOP ANIMATION
 #STANBY
execute as @s[tag=aj.svm_aj.animation.standby] unless entity @e[tag=executor,limit=1,scores={svm_ep.npc_state=0}] run function animated_java:svm_aj/animations/pause_all
 #WALK
execute as @s[tag=aj.svm_aj.animation.walk] unless entity @e[tag=executor,limit=1,scores={svm_ep.npc_state=1}] run function animated_java:svm_aj/animations/pause_all



#START ANIMATION
 #STANBY
execute if entity @e[tag=executor,limit=1,scores={svm_ep.npc_state=0}] as @s[tag=!aj.svm_aj.animation.standby] run function animated_java:svm_aj/animations/standby/play
 #WALK
execute if entity @e[tag=executor,limit=1,scores={svm_ep.npc_state=1}] as @s[tag=!aj.svm_aj.animation.walk] run function animated_java:svm_aj/animations/walk/play


