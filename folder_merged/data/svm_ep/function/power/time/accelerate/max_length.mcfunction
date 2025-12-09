scoreboard players operation @s svm_ep.e.accelerated = maxAcceleratedTime svm_ep.gamerule
function svm_ep:system/message/macro {"message":"Reached max acceleration length"}
scoreboard players reset @s svm_ep.using_move
