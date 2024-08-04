# data modify entity @e[tag=meowster,limit=1] wander_target set value [I; 0, -60, 15]

# Say welcome to new players
    execute as @a[tag=!welcomed] run function meowster:welcome
    execute as @a if score @s leave_game matches 1.. run function meowster:welcome

# Music system
    scoreboard players enable @a toggle_music
    execute if score music meowster matches 1.. run scoreboard players remove music meowster 1
    execute if entity @a[scores={toggle_music=1..}] run function meowster:music/toggle_music
    execute unless score music_enabled meowster matches -2147483648..2147483647 run function meowster:music/toggle_music
    execute if score music_enabled meowster matches 1 if score music meowster matches ..0 run function meowster:music/play

# Ticking
    scoreboard players remove @a[scores={clapped=1..}] clapped 1
    execute unless score state meowster matches 0 run scoreboard players add tick meowster 1

# Rotation stuff Meowster
    execute unless score movement meowster matches 0 as @e[tag=meowster,limit=1] at @s run tp @e[tag=aj.meowster.root,limit=1] ~ ~ ~ ~ ~
    execute if score movement meowster matches 0 as @e[tag=meowster,limit=1] at @s run tp @e[tag=aj.meowster.root,limit=1] ~ ~ ~

# Player mess
    effect give @a saturation infinite 1 true

# Wandering trader mess
    effect give @e[tag=meowster] invisibility infinite 1 true
    effect give @e[tag=meowster] speed infinite 2 true
    data modify entity @e[tag=meowster,limit=1] Offers set value {Recipes:[]}

# Other ticks functions
    execute as @e[tag=exploding_cat] at @s run function meowster:ticks/cat_movement

# Is it still alive
    execute if score health meowster matches 0 run function meowster:die

# Movement tick
    execute if score movement meowster matches 1 as @e[tag=meowster] at @s anchored eyes run function meowster:movements/get_close/tick
    execute if score movement meowster matches 2 as @e[tag=meowster] at @s anchored feet run function meowster:movements/stay_distance/tick
    execute if score movement meowster matches 3 as @e[tag=meowster] at @s anchored eyes run function meowster:movements/run_away/tick
    execute if score movement meowster matches 4 as @e[tag=meowster] at @s anchored eyes run function meowster:movements/dash/tick

# States tick
    execute if score state meowster matches -2 run function meowster:states/dying/tick
    execute if score state meowster matches -1 run function meowster:states/spawning/tick
    execute if score state meowster matches 1 as @e[tag=meowster] at @s anchored eyes run function meowster:states/cat_throw_attack/tick
    execute if score state meowster matches 2 as @e[tag=meowster] at @s anchored eyes run function meowster:states/sandfall_attack/tick
    execute if score state meowster matches 3 as @e[tag=meowster] at @s anchored eyes run function meowster:states/hammer/tick
    execute if score state meowster matches 4 as @e[tag=meowster] at @s anchored eyes run function meowster:states/charge/tick

# Real AI
# Movement 1: Is close
    execute if score state meowster matches 0 if score movement meowster matches 1 as @e[tag=meowster,limit=1] at @s run function meowster:ai/close

# Movement 2: Is mid far
    execute if score state meowster matches 0 if score movement meowster matches 2 as @e[tag=meowster,limit=1] at @s run function meowster:ai/midfar

# Movement 3: Is far
    execute if score state meowster matches 0 if score movement meowster matches 3 as @e[tag=meowster,limit=1] at @s run function meowster:ai/far
