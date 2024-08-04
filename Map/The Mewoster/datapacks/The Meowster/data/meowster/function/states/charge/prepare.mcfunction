kill @e[tag=charge_end,type=marker]
tag @e[tag=charge_end] remove charge_end

execute as @r at @s run summon marker ~ ~1 ~ {Tags:["charge_end"]}
execute as @e[tag=charge_end] at @s facing entity @e[tag=meowster,limit=1] eyes run function meowster:states/charge/move_back

scoreboard players set movement meowster 4