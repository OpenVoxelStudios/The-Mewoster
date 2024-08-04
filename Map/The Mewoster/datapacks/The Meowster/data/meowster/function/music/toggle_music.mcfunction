scoreboard players reset @a[scores={toggle_music=1..}] toggle_music

scoreboard players set music meowster 0
execute if score music_enabled meowster matches 0 run return run scoreboard players set music_enabled meowster 1
scoreboard players set music_enabled meowster 0
function meowster:music/stop