# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.catbomb.root] run return 0
execute on passengers if entity @s[tag=aj.catbomb.data] unless data entity @s {data:{rigHash: '3d65c3effd46a622ec89cf73faf59ad323b010bb202be55526aeb3e7c84a5158'}} on vehicle run function animated_java:catbomb/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1