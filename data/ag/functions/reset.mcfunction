scoreboard players set @a checkpoint 0
scoreboard players set @a wkill 0
scoreboard players set @a ws 0
scoreboard players set @a gun 0
scoreboard players set .delay gun 0
scoreboard players set .startT ws -1
scoreboard players set .pablo game -1
scoreboard players set .pablo2 game -1

tag @a remove wfinish
tag @a remove gun
tag @a remove pablo
tag @a remove checkpoint3

title @a reset

function ag:bossfight/reset

kill @e[tag=lord_pablo]

clear @a

tellraw @a {"text":"GAME WAS RESETTED!","color":"red","bold":true}