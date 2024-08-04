execute if score tick meowster matches ..10 run return 0

execute as @a at @s if entity @e[tag=KILLHITBOX,distance=..0.8] run damage @s 6

execute if score sandfallblocks meowster matches 0 run scoreboard players set tick meowster 0
execute if score sandfallblocks meowster matches 0 run return run scoreboard players set sandfallblocks meowster -1

execute if score sandfallblocks meowster matches -1 if score tick meowster matches 20.. run scoreboard players set state meowster 0
execute if score sandfallblocks meowster matches -1 if score tick meowster matches 20.. run return run function meowster:change_state/end_state_2
execute if score sandfallblocks meowster matches -1 run return 0

scoreboard players remove sandfallblocks meowster 1

execute as @e[tag=falling_sand] at @s run tp @s ~ ~-0.2 ~