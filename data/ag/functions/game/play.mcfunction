execute unless entity @a[scores={checkpoint=2..5}] run scoreboard players set @a checkpoint 1

execute if entity @a[scores={checkpoint=1}] run tp @a[scores={checkpoint=1}] -86.79 -50.00 57.54 -90.75 -3.50
execute if entity @a[scores={checkpoint=2},tag=!wfinish] run tp @a[scores={checkpoint=2},tag=!wfinish] 559 -36 2
execute if entity @a[scores={checkpoint=2},tag=wfinish] run tp @a[scores={checkpoint=2},tag=wfinish] 594.63 -46.00 14.60 1709.71 0.15
execute if entity @a[scores={checkpoint=3}] run tp @a[scores={checkpoint=3}] 901.30 -46.00 14.64 -89.70 -1.50
execute if entity @a[scores={checkpoint=4}] run tp @a[scores={checkpoint=4}] 937.71 -46.00 14.62 -269.85 0.45
execute if entity @a[scores={checkpoint=5}] run tp @a[scores={checkpoint=5}] 7 -58 3 180.0 -20.0

execute if entity @a[scores={checkpoint=0..1}] run kill @e[tag=lord_pablo]
execute if entity @a[scores={checkpoint=0..1}] run tag @a remove pablo
execute if entity @a[scores={checkpoint=0..1}] run tag @a remove gun
execute if entity @a[scores={checkpoint=0..1}] run scoreboard players set .pablo game -1
execute if entity @a[scores={checkpoint=0..1}] run clear @a