execute if entity @p[distance=..10] run effect give @s speed 1 3 true
execute at @p as @e[tag=movement_keypoint,distance=20..] run tag @s add movement_keypoint_potential
tag @e[tag=movement_keypoint_potential,sort=furthest,distance=2..,limit=3] add movement_keypoint_selected

function meowster:movements/finish