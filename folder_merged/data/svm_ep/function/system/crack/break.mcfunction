execute as @s[tag=svm_ep.crack_erase] run function svm_ep:erase_block
execute as @s[tag=!svm_ep.crack_erase] run function svm_ep:break_block
