execute unless score dash meowster matches 41 run scoreboard players add dash meowster 1

execute if score dash meowster matches 1 run data modify entity @s NoAI set value 1b
execute if score dash meowster matches 1 as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/stop
execute if score dash meowster matches 1 as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/jump_or_dash/play
execute if score dash meowster matches ..40 run return run execute facing entity @e[tag=charge_end,limit=1] feet run tp @s ~ ~ ~ ~ 0

execute unless score dash meowster matches 42.. anchored feet facing entity @e[tag=charge_end,limit=1] feet run tp @s ^ ^ ^1 ~ ~
execute as @e[tag=charge_end] unless entity @s[type=player] as @a[distance=..3,scores={clapped=0}] at @s run function meowster:movements/dash/damage_player


execute unless entity @e[tag=charge_end,distance=..3] if score dash meowster matches ..42 run return 0
execute if entity @e[tag=charge_end,distance=..2] if score dash meowster matches 41 run function meowster:movements/dash/dash_end
execute if score dash meowster matches ..55 run return 0


scoreboard players set dash meowster 0

execute as @e[tag=charge_end] if entity @s[type=player] as @e[tag=meowster,limit=1] run return run function meowster:change_state/run_state_2
kill @e[type=marker,tag=charge_end]
tag @e[tag=charge_end] remove charge_end

data modify entity @s NoAI set value 0b
scoreboard players set movement meowster 2
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/play

execute if score state meowster matches 4 run function meowster:change_state/end_state_4