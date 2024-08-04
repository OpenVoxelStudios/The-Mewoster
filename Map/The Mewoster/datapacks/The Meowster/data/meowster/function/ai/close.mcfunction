execute if entity @p[distance=..4] run function meowster:change_state/state_3
execute if entity @p[distance=18..] run scoreboard players set movement meowster 2
execute if entity @p[distance=8..] run scoreboard players add playerfar meowster 1
execute if score playerfar meowster matches 100 run scoreboard players set movement meowster 2
execute if score playerfar meowster matches 100 run scoreboard players set playerfar meowster 0
