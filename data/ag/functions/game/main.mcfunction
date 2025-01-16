function ag:game/opening
function ag:game/ending
function ag:game/lobby
function ag:game/playerleft

execute at @a if score .lobby game matches 1 run playsound minecraft:custom.lobby master @a ~ ~ ~ 0.75 1
execute if entity @a[x=7,y=-58,z=3,distance=..10] if score .lobby game matches 0..160 run scoreboard players add .lobby game 1
execute if entity @a[x=7,y=-58,z=3,distance=..10] if score .lobby game matches 160.. run scoreboard players set .lobby game 0
execute if entity @a[x=7,y=-58,z=3,distance=..10] run gamemode adventure @a

execute if entity @a[x=7,y=-58,z=3,distance=..10] unless entity @a[scores={checkpoint=-2147483648..2147483647}] run scoreboard players set @a checkpoint 0

execute if entity @a[x=7,y=-58,z=3,distance=..10] run execute as @e[tag=lordsam] run kill @e[tag=lordsam]
execute if entity @a[x=7,y=-58,z=3,distance=..10] run execute as @e[tag=sam] run kill @e[tag=sam]

execute unless entity @a[x=7,y=-58,z=3,distance=..10] run stopsound @a master minecraft:custom.lobby
execute unless entity @a[x=7,y=-58,z=3,distance=..10] run scoreboard players set .lobby game 0