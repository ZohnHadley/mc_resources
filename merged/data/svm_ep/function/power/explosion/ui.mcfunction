




execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/explosion/ability/ui/1 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=2},advancements={svm_ep:unlocked_ability/explosion/2=true}] run return run function svm_ep:power/explosion/ability/ui/2 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5},advancements={svm_ep:unlocked_ability/explosion/3=true}] run return run function svm_ep:power/explosion/ability/ui/5 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=4},advancements={svm_ep:unlocked_ability/explosion/4=true}] run return run function svm_ep:power/explosion/ability/ui/4 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=3},advancements={svm_ep:unlocked_ability/explosion/5=true}] run return run function svm_ep:power/explosion/ability/ui/3 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=6},advancements={svm_ep:unlocked_ability/explosion/6=true}] unless score doBlocksDestroy svm_ep.gamerule matches 0 run function svm_ep:power/explosion/ability/ui/6 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=7},advancements={svm_ep:unlocked_ability/explosion/7=true}] run function svm_ep:power/explosion/ability/ui/7 with storage svm_ep:mana_display input

#[$(mana_display)
