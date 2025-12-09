execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/time/ability/ui/1 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=2},advancements={svm_ep:unlocked_ability/time/2=true}] run return run function svm_ep:power/time/ability/ui/2 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=3},advancements={svm_ep:unlocked_ability/time/3=true}] run return run function svm_ep:power/time/ability/ui/3 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=4},advancements={svm_ep:unlocked_ability/time/4=true}] run return run function svm_ep:power/time/ability/ui/4 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5},advancements={svm_ep:unlocked_ability/time/5=true}] run return run function svm_ep:power/time/ability/ui/5 with storage svm_ep:mana_display input



#[$(mana_display)
