execute in svm_ep:technical run fill 0 0 0 16 16 16 air

$clone ~-$(r) ~-$(r) ~-$(r) ~$(r) ~$(r) ~$(r) to svm_ep:technical 0 0 0 filtered #svm_ep:indestructable move
$fill ~$(r) ~$(r) ~$(r) ~-$(r) ~-$(r) ~-$(r) air destroy

$clone from svm_ep:technical 0 0 0 $(2r) $(2r) $(2r) ~-$(r) ~-$(r) ~-$(r)

