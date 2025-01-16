execute at @a if score .spawn bossfight matches 1 run kill @e[tag=pickle]
execute at @a if score .spawn bossfight matches 1 run summon block_display 906 -46 14 {interpolation_duration:300,teleport_duration:300,Tags:["camera"],block_state:{Name:"minecraft:air"}}
execute at @a if score .spawn bossfight matches 1 run gamemode spectator @a[scores={checkpoint=3}]
execute at @a if score .spawn bossfight matches 0..275 run spectate @e[tag=camera,limit=1,sort=nearest] @a[scores={checkpoint=3},limit=1]
execute at @a if score .spawn bossfight matches 2 run tp @e[tag=camera,limit=1,sort=nearest] 925.60 -32.59 14.56 -90.0 36.3
execute at @a if score .spawn bossfight matches 275..285 run gamemode adventure @a[scores={checkpoint=3}]
execute at @a if score .spawn bossfight matches 275..285 run tp @a[scores={checkpoint=3}] 906 -46 14 -90.0 0.0
execute at @a if score .spawn bossfight matches 275..285 run kill @e[tag=pickle]