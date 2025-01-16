#summon interaction 7.50 -55 -1.50 {NoGravity:1b,height:0.75f,width:1.3f,Tags:["playint"]}
#summon interaction 7.50 -56 -1.50 {NoGravity:1b,height:0.5f,width:1.3f,Tags:["resetint"]}

execute as @e[tag=playint,type=interaction] on target run scoreboard players add .playint game 1
execute as @e[tag=resetint,type=interaction] on target run scoreboard players add .resetint game 1

execute at @a if score .playint game matches 1.. run function ag:game/play
execute at @a if score .resetint game matches 1.. run tellraw @a [{"text":"Are you sure you want to reset the game? ","bold":false},{"text":"[RESET]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ag:reset"}}]

execute as @e[tag=playint,type=interaction] run data remove entity @e[tag=playint,type=interaction,limit=1] attack
execute as @e[tag=playint,type=interaction] run data remove entity @e[tag=playint,type=interaction,limit=1] interaction

execute as @e[tag=resetint,type=interaction] run data remove entity @e[tag=resetint,type=interaction,limit=1] attack
execute as @e[tag=resetint,type=interaction] run data remove entity @e[tag=resetint,type=interaction,limit=1] interaction

#FILL COMMANDS
execute if entity @a[scores={checkpoint=0..2}] run fill 900 -46 12 900 -36 17 minecraft:air
execute if entity @a[scores={checkpoint=0..2},tag=!wfinish] run fill 591 -43 13 591 -46 15 white_concrete

execute if score .playint game matches 1.. run scoreboard players set .playint game 0
execute if score .resetint game matches 1.. run scoreboard players set .resetint game 0