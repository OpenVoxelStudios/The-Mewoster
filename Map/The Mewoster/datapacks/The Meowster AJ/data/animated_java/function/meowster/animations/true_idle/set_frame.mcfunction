# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.meowster.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'meowster', 'function_path': 'animated_java:meowster/animations/true_idle/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.true_idle.frame $(frame)
execute at @s run function animated_java:meowster/animations/true_idle/zzz/set_frame with storage aj:temp