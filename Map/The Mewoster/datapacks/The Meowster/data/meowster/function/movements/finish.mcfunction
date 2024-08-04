data modify storage meow Pos set from entity @e[tag=movement_keypoint_selected,sort=random,limit=1] Pos
data modify storage meow target set value [I;0,0,0]
execute store result storage meow target[0] int 1 run data get storage meow Pos[0]
execute store result storage meow target[1] int 1 run data get storage meow Pos[1]
execute store result storage meow target[2] int 1 run data get storage meow Pos[2]
data modify entity @s wander_target set from storage meow target

tag @e[tag=movement_keypoint_potential] remove movement_keypoint_potential
tag @e[tag=movement_keypoint_selected] remove movement_keypoint_selected