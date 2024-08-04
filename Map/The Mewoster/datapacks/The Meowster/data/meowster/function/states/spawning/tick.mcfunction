execute facing entity @p eyes run tp @s ~ ~ ~ ~ 0

execute if score tick meowster matches 1 run scoreboard players set spawning meowster 0
execute if score tick meowster matches 4 run bossbar set health value 1
execute if score tick meowster matches 8 run bossbar set health value 2
execute if score tick meowster matches 12 run bossbar set health value 3
execute if score tick meowster matches 16 run bossbar set health value 4
execute if score tick meowster matches 20 run bossbar set health value 5
execute if score tick meowster matches 24 run bossbar set health value 6
execute if score tick meowster matches 28 run bossbar set health value 7
execute if score tick meowster matches 32 run bossbar set health value 8
execute if score tick meowster matches 36 run bossbar set health value 9
execute if score tick meowster matches 40 run bossbar set health value 10
execute if score tick meowster matches 44 run bossbar set health value 11
execute if score tick meowster matches 48 run bossbar set health value 12


execute unless score spawning meowster matches 1 run return 0
bossbar set health color yellow
summon wandering_trader 0 -59 0 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["meowster"],wander_target:[I;0,0,0],Offers:{},Health:1000}

scoreboard players set tick meowster 51
scoreboard players set state meowster 4
scoreboard players set movement meowster 0
scoreboard players set dash meowster 0
function meowster:states/charge/prepare