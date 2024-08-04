playsound entity.generic.explode ambient @a ~ ~ ~
particle explosion ~-5 ~ ~ 0.5 1 0.5 0.01 5

execute as @a[distance=..3] run damage @s 6 explosion

execute on passengers run function animated_java:catbomb/remove/this

kill @s