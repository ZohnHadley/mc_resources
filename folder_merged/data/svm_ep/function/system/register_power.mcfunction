data remove storage svm_ep:power temp

$data modify storage svm_ep:power id append value $(data)
$data modify storage svm_ep:power temp set value $(data)
function svm_ep:system/setup_power with storage svm_ep:power temp

