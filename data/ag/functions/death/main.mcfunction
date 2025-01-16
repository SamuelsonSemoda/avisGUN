spawnpoint @a[scores={playerDeath=1..}] 14 -59 21
tp @a[scores={playerDeath=1..}] 14 -59 21

execute unless entity @a[scores={playerDeath=1}] run scoreboard players set .delay playerDeath 0
execute unless entity @a[scores={playerDeath=1}] run scoreboard players set .delay playerDeath 0

gamemode spectator @a[scores={playerDeath=1..}]
execute if entity @a[scores={playerDeath=1..}] run kill @e[tag=pickle]
execute if entity @a[scores={playerDeath=1..}] run kill @e[tag=sam]

execute if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run scoreboard players add .delay playerDeath 1

execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 1 run stopsound @a
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run stopsound @a * minecraft:custom.bossfight.pickle.yodel
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run stopsound @a voice
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run stopsound @a master minecraft:custom.bossfight.music
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run bossbar set minecraft:bossfight visible false
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 0..80 run fill 917 -46 -4 951 -42 27 minecraft:air replace minecraft:green_terracotta
execute at @a if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 1 run playsound minecraft:custom.death master @a ~ ~ ~ 1 1
execute if entity @a[scores={playerDeath=1..}] if score .delay playerDeath matches 1 run function ag:death/text

execute if entity @a if score .delay playerDeath matches 79.. run function ag:death/reset
execute if entity @a if score .delay playerDeath matches 80.. run scoreboard players set .delay playerDeath 0