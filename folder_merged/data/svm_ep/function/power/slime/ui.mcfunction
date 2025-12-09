execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/slime/ability/ui/1 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=2},advancements={svm_ep:unlocked_ability/slime/2=true}] run return run function svm_ep:power/slime/ability/ui/2 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=4},advancements={svm_ep:unlocked_ability/slime/3=true}] run return run function svm_ep:power/slime/ability/ui/4 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5},advancements={svm_ep:unlocked_ability/slime/4=true}] run return run function svm_ep:power/slime/ability/ui/5 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=6},advancements={svm_ep:unlocked_ability/slime/5=true}] run return run function svm_ep:power/slime/ability/ui/6 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=3},advancements={svm_ep:unlocked_ability/slime/6=true}] run return run function svm_ep:power/slime/ability/ui/3 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=7},advancements={svm_ep:unlocked_ability/slime/7=true}] run return run function svm_ep:power/slime/ability/ui/7 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=8},advancements={svm_ep:unlocked_ability/slime/8=true}] run return run function svm_ep:power/slime/ability/ui/8 with storage svm_ep:mana_display input










#title @s[nbt={SelectedItemSlot:0},scores={svm_ep.ability0=0,svm_ep.level=5..}] actionbar [$(mana_display),{"text":" S","color":"#8EFF54"},{"text":"li","color":"#BFFF6F"},{"text":"my R","color":"#DBF78A"},{"text":"ai","color":"#BFFF6F"},{"text":"n ","color":"#8EFF54"},{"text":"|","color":"gray"}]
#title @s[nbt={SelectedItemSlot:0},scores={svm_ep.ability0=0,svm_ep.level=5..,svm_ep.p.slime_ability_02_delay=1..}] actionbar [$(mana_display),{"text":" S","strikethrough":true,"color":"#99AA84"},{"text":"l","strikethrough":true,"color":"#9EB280"},{"text":"im","strikethrough":true,"color":"#AABA91"},{"text":"y ","strikethrough":true,"color":"#C0C8AF"},{"text":"R","strikethrough":true,"color":"#AABA91"},{"text":"ai","strikethrough":true,"color":"#9EB280"},{"text":"n ","strikethrough":true,"color":"#99AA84"},{"text":"|","color":"gray"}]

#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..}] actionbar [$(mana_display)
#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..,svm_ep.p.slime_ability_03_delay=1..}] actionbar [$(mana_display)

#[$(mana_display)
