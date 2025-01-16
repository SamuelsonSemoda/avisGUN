tellraw @a {"text":"DATAPACK RELOADED!","color":"green"}
scoreboard players set @a gun 0
scoreboard players set .delay gun 0
execute unless entity @a[scores={checkpoint=-2147483648..2147483647}] run scoreboard players set @a checkpoint 0
execute unless entity @a[scores={ws=-2147483648..2147483647}] run scoreboard players set @a ws 0