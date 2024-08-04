function meowster:kill

scoreboard players set tick meowster 0
scoreboard players set state meowster -1
scoreboard players set health meowster 12
execute store result bossbar health max run scoreboard players get health meowster
execute store result bossbar health value run scoreboard players get health meowster

bossbar set health players @a
bossbar set health visible true
bossbar set health color red
bossbar set health value 0
function animated_java:meowster/summon/default
execute as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/spawn/play
