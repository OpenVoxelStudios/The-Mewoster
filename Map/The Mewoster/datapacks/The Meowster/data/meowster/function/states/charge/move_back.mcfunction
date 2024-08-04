execute unless entity @n[distance=..20] run return 0
execute as @s at @s facing entity @e[tag=meowster,limit=1] eyes unless block ^ ^ ^-1 air run return 0
execute as @s at @s facing entity @e[tag=meowster,limit=1] eyes unless block ^ ^ ^-2 air run return 0
execute as @s at @s facing entity @e[tag=meowster,limit=1] eyes unless block ^ ^ ^-3 air run return 0

tp @s ^ ^ ^-0.5
execute as @s at @s facing entity @e[tag=meowster,limit=1] eyes run function meowster:states/charge/move_back