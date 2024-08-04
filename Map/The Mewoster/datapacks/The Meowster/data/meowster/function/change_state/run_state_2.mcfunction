kill @e[tag=charge_end,type=marker]
tag @e[tag=charge_end] remove charge_end

scoreboard players set tick meowster 0
scoreboard players set state meowster 2
scoreboard players set movement meowster 1

execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/true_idle/play
data modify entity @s NoAI set value 1b

execute at @a run summon marker ~ ~ ~ {Tags:["sandbox_center"]}

execute at @a run function meowster:things/box_player
execute store result score sandfall_rotation meowster run random value 1..4

scoreboard players set sandfallblocks meowster 80
playsound minecraft:block.anvil.place ambient @a ~ ~ ~
execute if score sandfall_rotation meowster matches 1 at @a run place template meowster:ceiling_triangle ~-5 ~16 ~-5 none
execute if score sandfall_rotation meowster matches 2 at @a run place template meowster:ceiling_triangle ~5 ~16 ~-5 clockwise_90
execute if score sandfall_rotation meowster matches 3 at @a run place template meowster:ceiling_triangle ~-5 ~16 ~5 counterclockwise_90
execute if score sandfall_rotation meowster matches 4 at @a run place template meowster:ceiling_triangle ~5 ~16 ~5 180