$execute store result score @s svm_ep.previous_dimension run data get storage svm_ep:dimension name.$(dimension)
execute unless entity @s[scores={svm_ep.previous_dimension=0}] run return 1

#IF NO NAME.dimension
execute store result storage svm_ep:dimension temp.total_saved_dimensions int 1 if data storage svm_ep:dimension id.[]
data modify storage svm_ep:dimension id append from storage svm_ep:dimension temp.dimension
$data modify storage svm_ep:dimension name.$(dimension) set from storage svm_ep:dimension temp.total_saved_dimensions
execute store result score @s svm_ep.previous_dimension run data get storage svm_ep:dimension temp.total_saved_dimensions
