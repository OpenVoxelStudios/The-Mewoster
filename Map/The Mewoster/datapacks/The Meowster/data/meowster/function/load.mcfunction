scoreboard objectives add clapped dummy
scoreboard objectives add meowster dummy
scoreboard objectives add toggle_music trigger

scoreboard players set state meowster 0
scoreboard players set tick meowster 0
scoreboard players set health meowster 12
scoreboard players set movement meowster 2
scoreboard players set dash meowster 0
scoreboard players set music meowster 0
scoreboard players set attackcooldown meowster 0
scoreboard players set playerfar meowster 0
# scoreboard players set music_enabled meowster 1

gamerule naturalRegeneration false
gamerule keepInventory true
gamerule randomTickSpeed 0
gamerule doImmediateRespawn false
xp set @a 0 levels
xp set @a 0 points
defaultgamemode adventure

# Random stuff i dont even know
    tag @a[tag=welcomed] remove welcomed
    execute as @a run attribute @s minecraft:player.entity_interaction_range base set 6.5
    scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

# HEALTH BAR
    bossbar remove health
    bossbar add health {"text": "T h e   M e o w s t e r", "color": "green", "bold": true}
    execute store result bossbar health max run scoreboard players get health meowster
    execute store result bossbar health value run scoreboard players get health meowster
    bossbar set health color yellow
    bossbar set health players @a
    bossbar set health style notched_12
    bossbar set health visible true

tellraw @a [{"text": "[TM]", "bold": true, "color": "gold"},{"text": " Datapack reloaded", "color": "green", "bold": false}]
