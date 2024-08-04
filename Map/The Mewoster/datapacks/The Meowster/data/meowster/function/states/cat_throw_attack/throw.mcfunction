summon cat ~ ~ ~ {Health:1000,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,attributes:[{id:"generic.max_health",base:1000f}],Tags:["exploding_cat", "spawned_explosive_cat"]}
function animated_java:catbomb/summon/default

effect give @e[tag=spawned_explosive_cat] invisibility infinite 1 true
execute as @e[tag=aj.catbomb.root,tag=!catbombaj] run ride @s mount @e[tag=spawned_explosive_cat,limit=1,sort=nearest]
execute as @e[tag=aj.catbomb.root,tag=!catbombaj] run tag @s add catbombaj

execute as @e[tag=spawned_explosive_cat] at @s facing entity @p feet positioned ~ ~1 ~ run tp @s ~ ~ ~ ~ ~
tag @e[tag=spawned_explosive_cat] remove spawned_explosive_cat


scoreboard players remove catsleft meowster 1
scoreboard players set tick meowster 0