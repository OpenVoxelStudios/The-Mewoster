scoreboard players set health meowster -1

scoreboard players set movement meowster -1
scoreboard players set state meowster -2
scoreboard players set tick meowster 0

bossbar set health color red
playsound entity.ender_dragon.death

execute as @e[tag=meowster] run data modify entity @s NoAI set value 1b
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/stop