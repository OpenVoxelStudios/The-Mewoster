# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.catbomb.bone.string2] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_string2 set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.catbomb.bone.string] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_string set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.catbomb.bone.flame] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_flame set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.catbomb.bone.bomb] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_bomb set from storage aj:uuid main.out