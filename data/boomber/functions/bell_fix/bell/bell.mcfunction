scoreboard players set @s bb.success 0
clone ~ ~ ~ ~ ~ ~ ~ 254 ~ replace normal
setblock ~ ~ ~ redstone_lamp
clone ~ ~1 ~ ~ ~1 ~ ~ 255 ~ replace normal
setblock ~ ~1 ~ stone
setblock ~ ~1 ~ air
execute if block ~ ~ ~ redstone_lamp[lit=true] run scoreboard players set @s bb.success 1
clone ~ 254 ~ ~ 254 ~ ~ ~ ~ replace move
clone ~ 255 ~ ~ 255 ~ ~ ~1 ~ replace move

execute as @s[tag=!boomber.bell_fix.bell.powered, scores={bb.success=1}] run function boomber:bell_fix/bell/powered
execute as @s[tag=boomber.bell_fix.bell.powered, scores={bb.success=0}] run function boomber:bell_fix/bell/depowered