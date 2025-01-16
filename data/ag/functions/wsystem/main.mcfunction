execute if entity @a[tag=!wfinish,scores={checkpoint=2,ws=0}] run scoreboard players set .startT ws 100
execute if score .startT ws matches 0..100 run scoreboard players remove .startT ws 1
execute if score .startT ws matches 0 run scoreboard players set .startT ws -1

execute if score .startT ws matches 50..100 run kill @e[tag=sam]

scoreboard players set @a[tag=!wfinish,x=559,y=-36,z=2,distance=..10,scores={checkpoint=2,ws=0}] ws 1

scoreboard players set @a[tag=!wfinish,scores={wkill=5,ws=1}] ws 2
execute at @a if entity @a[tag=!wfinish,scores={checkpoint=2,ws=2}] run title @a title {"text":"WAVE COMPLETED!","bold": true}
execute if entity @a[tag=!wfinish,scores={checkpoint=2,ws=2}] run scoreboard players set .startT ws 100
scoreboard players set @a[tag=!wfinish,scores={ws=2}] ws 3

scoreboard players set @a[tag=!wfinish,scores={wkill=7,ws=3}] ws 4
execute at @a if entity @a[tag=!wfinish,scores={checkpoint=2,ws=4}] run title @a title {"text":"WAVE COMPLETED!","bold": true}
execute if entity @a[tag=!wfinish,scores={checkpoint=2,ws=4}] run scoreboard players set .startT ws 100
scoreboard players set @a[tag=!wfinish,scores={ws=4}] ws 5

scoreboard players set @a[tag=!wfinish,scores={wkill=9,ws=5}] ws 6
execute at @a if entity @a[tag=!wfinish,scores={checkpoint=2,ws=6}] run title @a title {"text":"WAVE COMPLETED!","bold": true}
execute if entity @a[tag=!wfinish,scores={checkpoint=2,ws=6}] run scoreboard players set .startT ws 100
scoreboard players set @a[tag=!wfinish,scores={ws=6}] ws 7

scoreboard players set @a[tag=!wfinish,scores={wkill=12,ws=7}] ws 8
execute at @a if entity @a[tag=!wfinish,scores={checkpoint=2,ws=8}] run title @a title {"text":"WAVE COMPLETED!","bold": true}
execute if entity @a[tag=!wfinish,scores={checkpoint=2,ws=8}] run scoreboard players set .startT ws 100
scoreboard players set @a[tag=!wfinish,scores={ws=8}] ws 9

execute if score .startT ws matches 1 run function ag:wsystem/waves