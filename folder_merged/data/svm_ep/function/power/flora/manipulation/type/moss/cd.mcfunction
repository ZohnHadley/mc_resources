fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #svm_ep:flora_manipulation/moss destroy
kill @s
execute align xyz positioned ~-2 ~-2 ~-2 as @e[dx=4,dy=4,dz=4,tag=!executor,type=!#svm_ep:technical] at @s run function svm_ep:power/flora/manipulation/type/moss/check_mob 