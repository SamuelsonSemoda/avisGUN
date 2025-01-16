execute store result score .faces bossfight run random value 1..5

execute if score .faces bossfight matches 1 if score .bossbar bossfight matches 55..100 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:15}}}
execute if score .faces bossfight matches 2 if score .bossbar bossfight matches 55..100 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:16}}}
execute if score .faces bossfight matches 3 if score .bossbar bossfight matches 55..100 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:17}}}
execute if score .faces bossfight matches 4 if score .bossbar bossfight matches 55..100 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:17}}}
execute if score .faces bossfight matches 5 if score .bossbar bossfight matches 55..100 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:19}}}


execute if score .faces bossfight matches 1 if score .bossbar bossfight matches 5..50 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:18}}}
execute if score .faces bossfight matches 2 if score .bossbar bossfight matches 5..50 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:15}}}
execute if score .faces bossfight matches 3 if score .bossbar bossfight matches 5..50 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:16}}}
execute if score .faces bossfight matches 4 if score .bossbar bossfight matches 5..50 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:17}}}
execute if score .faces bossfight matches 5 if score .bossbar bossfight matches 5..50 run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:19}}}