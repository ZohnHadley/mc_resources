#give @s frog_spawn_egg{EntityTag:{id:marker,Tags:["svm_ep.dec.chest","svm_ep.decoration_set"]}} 1

execute at @s[tag=svm_ep.dec.barrel] run function svm_ep:structures/decoration/barrel
execute at @s[tag=svm_ep.dec.chest] run function svm_ep:structures/decoration/chest
execute at @s[tag=svm_ep.dec.clock_tower] run function svm_ep:structures/decoration/clock_tower
execute at @s[tag=svm_ep.dec.cherry_house] run function svm_ep:structures/decoration/cherry_house
execute at @s[tag=svm_ep.dec.cherry_katana] run function svm_ep:structures/decoration/cherry_katana
execute at @s[tag=svm_ep.dec.calcite_guard] if predicate svm_ep:chance/25_percent run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.calcite_trap"]}
execute at @s[tag=svm_ep.dec.calcite_dec] run function svm_ep:structures/decoration/calcite_dec
execute at @s[tag=svm_ep.dec.small_cherry_island] run function svm_ep:structures/cherry_island/small_dec
execute at @s[tag=svm_ep.dec.clay_corridor_dec] if predicate svm_ep:chance/50_percent run function svm_ep:structures/decoration/clay_corridor_dec
execute at @s[tag=svm_ep.dec.clay_corridor_guard] if predicate svm_ep:chance/50_percent summon zombie run function svm_ep:structures/decoration/clay_corridor_guard



kill @s