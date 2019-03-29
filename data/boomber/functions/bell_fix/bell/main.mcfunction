execute as @s if block ~ ~ ~ minecraft:bell run function boomber:bell_fix/bell/bell
execute as @s unless block ~ ~ ~ minecraft:bell run function boomber:bell_fix/bell/destroy

execute as @s[nbt={Age:9999998s}] run data merge entity @s {Age:0s}