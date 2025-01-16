execute if entity @a[scores={playerLeft=1..}] as @e[tag=lordsam] run kill @e[tag=lordsam]

execute if entity @a[scores={playerLeft=1..}] run function ag:bossfight/reset
tp @a[scores={playerLeft=1..}] 7 -58 3 180.0 -20.0
scoreboard players set @a[scores={playerLeft=1..}] wkill 0
scoreboard players set @a[scores={playerLeft=1..}] ws 0
scoreboard players set @a[scores={playerLeft=1..}] gun 0
execute if entity @a[scores={playerLeft=1..}] run scoreboard players set .delay gun 0
execute if entity @a[scores={playerLeft=1..}] run scoreboard players set .startT ws -1

execute if entity @a[scores={playerLeft=1..}] run title @a reset
execute if entity @a[scores={playerLeft=1..}] run clear @a

execute if entity @a[scores={playerLeft=1..}] run tag @a remove deathstart

scoreboard players set @a[scores={playerLeft=1..}] playerLeft 0