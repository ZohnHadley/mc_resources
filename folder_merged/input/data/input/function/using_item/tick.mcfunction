execute as @s[advancements={input:using_item/start=false}] run return run function #input:using_item/end
advancement revoke @s only input:using_item/start
advancement revoke @s only input:using_item/tick
function #input:using_item/tick