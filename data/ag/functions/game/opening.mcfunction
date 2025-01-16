function ag:mobs/lord_pablo/opening
execute if entity @a[tag=gun,scores={checkpoint=1..},x=-66,y=-50,z=-8,distance=..1.5] run scoreboard players set @a checkpoint 2
execute at @a if entity @a[tag=gun,scores={checkpoint=1..},x=-66,y=-50,z=-8,distance=..1.5] run playsound minecraft:custom.bossfight.defeat master @a ~ ~ ~ 0.5 0
execute if entity @a[tag=gun,scores={checkpoint=1..},x=-66,y=-50,z=-8,distance=..1.5] run tag @a remove wfinish
execute if entity @a[scores={checkpoint=1..},x=-66,y=-50,z=-8,distance=..1.5] run fill 591 -43 13 591 -46 15 white_concrete
execute if entity @a[tag=gun,scores={checkpoint=1..},x=-66,y=-50,z=-8,distance=..1.5] run tp @a 559 -36 2 ~ ~