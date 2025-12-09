$data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage svm_ep:numbers distance set from entity @s transformation.scale[0]
kill @s
execute store result score %distance svm_ep.numbers run data get storage svm_ep:numbers distance 0.05
#function svm_ep:system/message/print_score {"score":"svm_ep.numbers","entity":"@s"}
