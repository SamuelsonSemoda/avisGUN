execute if score .defeat bossfight matches 0..5 run kill @e[tag=sam,type=zombie]
execute if score .defeat bossfight matches 0..5 run kill @e[tag=pickle]
execute if score .defeat bossfight matches 0..5 run kill @e[tag=avisa]
execute if score .defeat bossfight matches 0..5 run stopsound @a master minecraft:custom.bossfight.music
execute if score .defeat bossfight matches 0..5 run scoreboard players set .music bossfight -1
execute if score .defeat bossfight matches 0..5 run fill 917 -46 -4 951 -42 27 minecraft:air replace minecraft:green_terracotta
execute at @a if score .defeat bossfight matches 1 run stopsound @a voice
execute at @a if score .defeat bossfight matches 2 run playsound minecraft:custom.bossfight.voicelines.defeat voice @a ~ ~ ~ 100 1
execute if score .defeat bossfight matches 0..5 run scoreboard players set @a checkpoint 4
execute if score .defeat bossfight matches 195..200 run scoreboard players set .pablo2 game 0
execute if score .defeat bossfight matches 0..150 run particle minecraft:trial_spawner_detection 937 -41 14 0.2 0 0.2 0.5 500 force
execute if score .defeat bossfight matches 150 run particle minecraft:explosion_emitter 937 -41 14 1 1 1 1 500 force
execute at @a if score .defeat bossfight matches 150 run playsound minecraft:custom.bossfight.defeat master @a ~ ~ ~ 1 1
execute if score .defeat bossfight matches 155 run kill @e[tag=lordsam,type=item_display]

execute if score .defeat bossfight matches 0..200 run scoreboard players add .defeat bossfight 1
execute if score .defeat bossfight matches 200.. run scoreboard players set .defeat bossfight -1