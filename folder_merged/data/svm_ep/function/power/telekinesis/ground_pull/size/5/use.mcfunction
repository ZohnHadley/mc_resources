#new_pos examples:  
#  at @n[tag=new_pos]  
#  OR  
#  positioned ^ ^ ^5

#r is viable if an int from 0 to 16
#2r is 2*r


scoreboard players set %can_move svm_ep.numbers 0



execute in svm_ep:technical run fill 0 0 0 16 16 16 air
execute in svm_ep:technical run fill 0 32 0 16 48 16 air
execute in svm_ep:technical run fill 0 64 0 16 80 16 air
execute in svm_ep:technical run fill 0 96 0 16 112 16 air

#COPY TO TECH
 #OLD LOCATION
clone ~-6 ~-6 ~-6 ~6 ~6 ~6 to svm_ep:technical 0 0 0 replace move

 #NEW LOCATION
execute at @s run clone ~-6 ~-6 ~-6 ~6 ~6 ~6 to svm_ep:technical 0 32 0


#CHECK IF CAN MOVE
execute in svm_ep:technical run fill 0 32 0 16 64 16 air replace #svm_ep:telekinesis_can_replace
execute in svm_ep:technical if blocks 0 32 0 16 48 16 0 64 0 all run scoreboard players set %can_move svm_ep.numbers 1



 

#ON FAIL
execute if score %can_move svm_ep.numbers matches 0 run return run clone from svm_ep:technical 0 0 0 12 12 12 ~-6 ~-6 ~-6


#ON SUCCESS
execute at @s run fill ~6 ~6 ~6 ~-6 ~-6 ~-6 air destroy
clone from svm_ep:technical 0 0 0 12 12 12 ~-6 ~-6 ~-6 filtered #svm_ep:telekinesis_cant_move move
execute at @s run clone from svm_ep:technical 0 0 0 12 12 12 ~-6 ~-6 ~-6




return 1



