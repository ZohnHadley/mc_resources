execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/healing/ability/ui/1 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=2},advancements={svm_ep:unlocked_ability/healing/2=true}] run return run function svm_ep:power/healing/ability/ui/2 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=3},advancements={svm_ep:unlocked_ability/healing/3=true}] run return run function svm_ep:power/healing/ability/ui/3 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=4},advancements={svm_ep:unlocked_ability/healing/4=true}] run return run function svm_ep:power/healing/ability/ui/4 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5},advancements={svm_ep:unlocked_ability/healing/5=true}] run return run function svm_ep:power/healing/ability/ui/5 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=6},advancements={svm_ep:unlocked_ability/healing/6=true}] run return run function svm_ep:power/healing/ability/ui/6 with storage svm_ep:mana_display input





#

#title @s[nbt={SelectedItemSlot:7},scores={svm_ep.p.moveset=1}] actionbar [$(mana_display),{"text":" M","color":"gray"},{"text":"o","color":"#B3B3B3"},{"text":"v","color":"#BFBFBF"},{"text":"e","color":"#C7C7C7"},{"text":"s","color":"#BFBFBF"},{"text":"e","color":"#B3B3B3"},{"text":"t:","color":"gray"},{"text":" P","color":"#CBC6E5"},{"text":"h","color":"#DECBE4"},{"text":"a","color":"#EAD9EC"},{"text":"s","color":"#F3E6F5"},{"text":"e","color":"#EAD9EC"},{"text":" 1","color":"#CBC6E5"},{"text":" |","color":"gray"}]

#[$(mana_display)  ]