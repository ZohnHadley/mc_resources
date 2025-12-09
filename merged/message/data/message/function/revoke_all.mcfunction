
execute as @s[tag=message.no_revoke] run advancement revoke @s only message:revoke_all
advancement revoke @s[tag=!message.no_revoke] from message:root

tag @s remove message.no_revoke