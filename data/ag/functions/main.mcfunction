execute unless entity @a[gamemode=creative] run function ag:gun/shoot/loop
function ag:bossfight/loop
function ag:mobs/sam/main
function ag:wsystem/main
function ag:death/main
function ag:game/main

execute unless entity @a[scores={checkpoint=-2147483648..2147483647}] run scoreboard players set @a checkpoint 0
execute unless entity @a[scores={ws=-2147483648..2147483647}] run scoreboard players set @a ws 0

scoreboard players set @a[scores={checkpoint=0..1}] ws 0
execute at @a unless entity @a[gamemode=spectator] run title @a actionbar {"score":{"name":"@a","objective":"hb"},"bold":true,"color":"red"}
execute at @a if entity @a[gamemode=spectator] run title @a actionbar {"text":""}
execute at @a if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..10] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..10]
execute at @a if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_nugget"}},distance=..10] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_nugget",tag:{CustomModelData:15}}},distance=..10]
execute at @a if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}},distance=..10] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}},distance=..10]
effect give @a minecraft:weakness infinite 100 true
effect give @a minecraft:saturation infinite 100 true
item replace entity @a weapon.offhand with minecraft:air
execute if entity @a[scores={checkpoint=0..2},x=878,y=-46,z=14,distance=..6] run kill @e[tag=lordsam]
execute if entity @a[scores={checkpoint=0..2},x=878,y=-46,z=14,distance=..6] run kill @e[tag=lord_pablo]
execute if entity @a[scores={checkpoint=0..2},x=878,y=-46,z=14,distance=..6] run tag @a add checkpoint3