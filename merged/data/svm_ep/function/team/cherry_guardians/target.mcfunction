execute on target run return 0
data modify entity @s Silent set value 1b
damage @s 0.001 svm_ep:mob_aggro by @n
data modify entity @s Silent set value 0b
return 1