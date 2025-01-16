execute if score .clock bossfight matches -1 if score .spawn bossfight matches -1 run kill @e[tag=lordsam]

execute if entity @a[scores={checkpoint=2..3},x=906,y=-46,z=14,distance=..3.5] run fill 900 -46 12 900 -36 17 minecraft:barrier
execute if entity @a[scores={checkpoint=2},x=906,y=-46,z=14,distance=..3.5] run scoreboard players set .spawn bossfight 0
execute if entity @a[scores={checkpoint=2},x=906,y=-46,z=14,distance=..3.5] run kill @e[tag=camera,type=block_display]
execute if entity @a[scores={checkpoint=2},x=906,y=-46,z=14,distance=..3.5] run kill @e[tag=lordsam]
execute if entity @a[scores={checkpoint=2},x=906,y=-46,z=14,distance=..3.5] run function ag:bossfight/reset

execute if entity @a[tag=!deathstart,scores={checkpoint=3},x=906,y=-46,z=14,distance=..3.5] run scoreboard players set .spawn bossfight 0
execute if entity @a[tag=!deathstart,scores={checkpoint=3},x=906,y=-46,z=14,distance=..3.5] run tag @a add deathstart