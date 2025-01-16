function ag:gun/shoot/delay

execute at @a[scores={gun=1..}] unless entity @a[tag=cucumbacharge] run playsound custom.gun.shoot master @a[scores={gun=1..}] ~ ~ ~ 0.1 1
execute at @a[scores={chargegun=1..}] if entity @a[tag=cucumbacharge] run playsound custom.gun.shoot master @a[scores={chargegun=1..}] ~ ~ ~ 0.5 2
execute at @a[scores={gun=1..}] unless entity @a[tag=cucumbacharge] run summon minecraft:item_display ^ ^ ^0.1 {NoGravity:1b,billboard:"center",Tags:["cucumba"],brightness:{sky:15,block:15},item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:16}}}
execute at @a[scores={chargegun=1..}] if entity @a[tag=cucumbacharge] run summon minecraft:item_display ^ ^ ^0.1 {NoGravity:1b,billboard:"center",Tags:["cucumba"],brightness:{sky:15,block:15},item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:18}}}
execute at @a[scores={chargegun=1..}] if entity @a[tag=cucumbacharge] run tag @e[tag=cucumba] add avisacharge
execute at @a[scores={gun=1..}] at @e[tag=cucumba,limit=1,sort=nearest] unless entity @a[tag=Reloading] run tp @e[tag=cucumba,sort=nearest,limit=1] ~ ~ ~ facing entity @p
execute at @a[scores={gun=1..}] at @e[tag=cucumba,limit=1,sort=nearest] unless entity @a[tag=Reloading] run tp @e[tag=cucumba,sort=nearest,limit=1] ~ ~0.75 ~
execute at @a[scores={chargegun=1..}] at @e[tag=cucumba,limit=1,sort=nearest] unless entity @a[tag=Reloading] run tp @e[tag=cucumba,sort=nearest,limit=1] ~ ~ ~ facing entity @p
execute at @a[scores={chargegun=1..}] at @e[tag=cucumba,limit=1,sort=nearest] unless entity @a[tag=Reloading] run tp @e[tag=cucumba,sort=nearest,limit=1] ~ ~0.75 ~
execute at @e[tag=cucumba] run tp @e[tag=cucumba,limit=1,sort=nearest] ^ ^ ^-0.5
execute at @e[tag=cucumba] unless entity @a[tag=cucumbacharge] run scoreboard players add @e[tag=cucumba,sort=nearest,limit=1] gun 1
execute at @e[tag=cucumba] if entity @a[tag=cucumbacharge] run scoreboard players add @e[tag=cucumba,sort=nearest,limit=1] chargegun 1

#CUCUMBA RAYCAST
execute at @e[tag=cucumba] unless block ~ ~1 ~ #raycast run tag @e[tag=cucumba,sort=nearest,limit=1] add explosion
execute at @e[tag=cucumba,scores={gun=70..}] unless entity @a[tag=cucumbacharge] run tag @e[tag=cucumba,sort=nearest,limit=1] add explosion
execute at @e[tag=cucumba,scores={gun=1..}] unless entity @a[tag=cucumbacharge] if entity @e[sort=nearest,distance=..1.5,tag=!cucumba,type=!player,type=!item_display] run tag @e[tag=cucumba,sort=nearest,limit=1] add explosion

#AVISA RAYCAST
execute at @e[tag=avisacharge,tag=cucumba,scores={chargegun=70..}] run tag @e[tag=avisacharge,tag=cucumba,sort=nearest,limit=1] add explosion
execute at @e[tag=avisacharge,tag=cucumba,scores={chargegun=1..}] if entity @e[sort=nearest,distance=..3.5,tag=!cucumba,tag=!expickle,tag=!pickle,type=!player] run tag @e[tag=avisacharge,tag=cucumba,sort=nearest,limit=1] add explosion

execute at @e[tag=explosion] run function ag:gun/shoot/explosion

execute at @e[tag=explosion] run kill @e[tag=explosion,sort=nearest,limit=1]
scoreboard players set @a[scores={chargegun=1..}] chargegun 0
scoreboard players set @a[scores={gun=1..}] gun 0