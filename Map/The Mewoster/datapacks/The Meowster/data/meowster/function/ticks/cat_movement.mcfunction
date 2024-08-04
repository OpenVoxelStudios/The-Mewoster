tp @s ^ ^ ^0.3

execute if entity @s[tag=!returned_explosive_cat] unless entity @s[nbt={HurtByTimestamp:0}] run function meowster:ticks/cat_movement_hurted

execute if entity @s[tag=returned_explosive_cat] if entity @e[tag=meowster,distance=..3] run function meowster:ticks/cat_movement_damage
execute unless entity @a[distance=..50] run function meowster:ticks/cat_movement_die
execute unless block ~ ~ ~ air run function meowster:ticks/cat_movement_die
execute if entity @a[distance=..1.5] run function meowster:ticks/cat_movement_die