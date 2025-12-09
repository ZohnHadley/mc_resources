scoreboard players remove @s svm_ep.e.freezed 60

execute as @n[scores={svm_ep.e.freezed_display_order=1}] at @s run function svm_ep:entity/effect/freezed/shatter_on_hurt
execute as @n[scores={svm_ep.e.freezed_display_order=2}] at @s run function svm_ep:entity/effect/freezed/shatter_on_hurt
execute as @n[scores={svm_ep.e.freezed_display_order=3}] at @s run function svm_ep:entity/effect/freezed/shatter_on_hurt