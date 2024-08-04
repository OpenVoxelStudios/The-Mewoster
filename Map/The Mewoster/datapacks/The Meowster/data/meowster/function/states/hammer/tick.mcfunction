execute facing entity @p eyes run tp @s ~ ~ ~ ~ 0
data modify entity @s NoAI set value 1b


execute if score tick meowster matches ..5 run return 0
execute if score tick meowster matches 6 as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/hammer/play

execute if score tick meowster matches 35 as @a[distance=..4.5] at @s run function meowster:states/hammer/clap


execute if score tick meowster matches ..56 run return 0
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/play
data modify entity @s NoAI set value 0b
scoreboard players set state meowster 0
scoreboard players set tick meowster 0