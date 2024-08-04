execute store result score attackcooldown meowster run random value 2..20

execute store result score midfarattack meowster run random value 1..4
execute if score midfarattack meowster matches 1..2 run function meowster:change_state/state_1
execute if score midfarattack meowster matches 3 run function meowster:change_state/state_2
execute if score midfarattack meowster matches 4 run scoreboard players set movement meowster 3