tag @a[tag=charge_end] remove charge_end
execute as @e[tag=sandbox_center] at @s run function meowster:things/unbox_player
kill @e[tag=sandbox_center]

scoreboard players set movement meowster 3

data modify entity @s NoAI set value 0b
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/true_idle/stop
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/play