tp @a[scores={playerDeath=1..,checkpoint=0}] 7 -58 3 180.0 -20.0
tp @a[scores={playerDeath=1..,checkpoint=1}] -86.79 -50.00 57.54 -90.75 -3.50
tp @a[scores={playerDeath=1..,checkpoint=2},tag=!wfinish] 559 -36 2
tp @a[scores={playerDeath=1..,checkpoint=2},tag=wfinish] 594.63 -46.00 14.60 1709.71 0.15
tp @a[scores={playerDeath=1..,checkpoint=3}] 901.30 -46.00 14.64 -89.70 -1.50
tp @a[scores={playerDeath=1..,checkpoint=4}] 937.71 -46.00 14.62 -269.85 0.45
tp @a[scores={playerDeath=1..,checkpoint=5}] 7 -58 3 180.0 -20.0

execute if entity @a[scores={checkpoint=3}] run function ag:bossfight/reset

execute if entity @a[scores={checkpoint=0..2}] run fill 900 -46 12 900 -36 17 minecraft:air replace minecraft:barrier
execute if entity @a[scores={checkpoint=0..2},tag=!wfinish] run fill 591 -43 13 591 -46 15 white_concrete
execute if entity @a[scores={checkpoint=0..2},tag=!wfinish] run fill 591 -43 13 591 -46 15 white_concrete

tag @a remove deathstart

scoreboard players reset @a[scores={playerDeath=1..,checkpoint=2}] ws
scoreboard players reset @a[scores={playerDeath=1..,checkpoint=2}] wkill
kill @e[tag=sam]
execute as @e[tag=cucumba,type=item_display] if entity @a[scores={playerDeath=1..}] run kill @e[tag=cucumba,type=item_display]
execute as @e[tag=pickle] if entity @a[scores={playerDeath=1..,checkpoint=3}] run kill @e[tag=pickle]
execute as @e[tag=avisa,type=item] if entity @a[scores={playerDeath=1..,checkpoint=3}] run kill @e[tag=avisa,type=item]


execute if entity @a[scores={playerDeath=1..}] run scoreboard players set @a gun 0
execute if entity @a[scores={playerDeath=1..}] run scoreboard players set .delay gun 0
execute if entity @a[scores={playerDeath=1..}] run scoreboard players set .spawn bossfight -1

gamemode adventure @a[scores={playerDeath=1..}]
execute if score .delay playerDeath matches 80.. run scoreboard players set @a[scores={playerDeath=1..}] playerDeath 0