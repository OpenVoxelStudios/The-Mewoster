execute if score attackcooldown meowster matches 1.. run scoreboard players remove attackcooldown meowster 1

execute if entity @p[distance=..4] run scoreboard players set movement meowster 1
execute if score attackcooldown meowster matches ..0 if entity @p[distance=8..] run function meowster:ai/midfar_attack
