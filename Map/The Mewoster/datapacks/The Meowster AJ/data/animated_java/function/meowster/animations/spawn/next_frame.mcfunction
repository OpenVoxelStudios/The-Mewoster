# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.meowster.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'meowster', 'function_path': 'animated_java:meowster/animations/spawn/next_frame'}
execute if score @s aj.spawn.frame matches 66.. run scoreboard players set @s aj.spawn.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.spawn.frame
execute at @s run function animated_java:meowster/animations/spawn/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.spawn.frame 1