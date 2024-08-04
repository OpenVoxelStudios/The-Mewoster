execute if score attackcooldown meowster matches 1.. run scoreboard players remove attackcooldown meowster 1

execute if entity @p[distance=..6] run scoreboard players set movement meowster 1
execute if score attackcooldown meowster matches ..0 if entity @p[distance=15..] run function meowster:change_state/state_4
execute if score attackcooldown meowster matches ..0 if entity @p[distance=15..] store result score attackcooldown meowster run random value 5..20