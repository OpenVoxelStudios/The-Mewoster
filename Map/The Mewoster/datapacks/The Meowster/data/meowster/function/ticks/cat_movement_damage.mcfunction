playsound entity.cat.hurt ambient @a ~ ~ ~
playsound entity.ender_dragon.growl ambient @a ~ ~ ~ 0.4
particle flame ~ ~ ~ 0.5 1 0.5 0.1 25

scoreboard players set catsleft meowster 0
scoreboard players remove health meowster 1
execute store result bossbar health value run scoreboard players get health meowster

function meowster:ticks/cat_movement_die