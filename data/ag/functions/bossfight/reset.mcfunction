execute unless entity @a[scores={checkpoint=..2},tag=!checkpoint3] unless entity @a[scores={checkpoint=4..}] run scoreboard players set @a checkpoint 3
execute at @e[tag=lordsam] run tp @e[tag=lordsam] 937 -41 14
scoreboard players set .clock bossfight -1
scoreboard players set .music bossfight -1
scoreboard players set .spawn bossfight -1
tag @a remove halflife
tag @a remove cucumbacharge
execute as @e[tag=avisa,type=item] run kill @e[tag=avisa,type=item]
execute as @e[tag=sam,type=zombie] run kill @e[tag=sam,type=zombie]
execute as @e[tag=lordsam,type=item_display] run kill @e[tag=lordsam,type=item_display]
stopsound @a
fill 917 -46 -4 951 -42 27 minecraft:air replace minecraft:green_terracotta
bossbar set minecraft:bossfight max 100
bossbar set minecraft:bossfight value 100
bossbar set minecraft:bossfight color white
bossbar set minecraft:bossfight players @a
bossbar set minecraft:bossfight visible false