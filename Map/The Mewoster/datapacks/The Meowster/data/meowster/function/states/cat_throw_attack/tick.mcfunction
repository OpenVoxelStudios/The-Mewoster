execute as @e[tag=aj.meowster.root] at @s run tp @s ~ ~ ~ facing entity @p

execute if score tick meowster matches 40 as @e[tag=aj.meowster.root] run function meowster:states/cat_throw_attack/animation

execute if score catsleft meowster matches ..0 as @e[tag=aj.meowster.root] run function animated_java:meowster/animations/walk/play
execute if score catsleft meowster matches ..0 run scoreboard players set state meowster 0