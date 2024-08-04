execute at @p as @e[tag=movement_keypoint,distance=..10] run tag @s add movement_keypoint_potential
tag @e[tag=movement_keypoint_potential,sort=nearest,distance=2..,limit=3] add movement_keypoint_selected

function meowster:movements/finish