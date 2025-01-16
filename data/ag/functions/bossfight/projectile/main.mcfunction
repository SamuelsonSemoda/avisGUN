#summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["raycaster"],NoAI:1b}

execute at @e[tag=lordsam] run tp @e[tag=raycaster] ~ ~ ~ facing entity @a[sort=nearest,limit=1] feet
execute at @a if entity @e[tag=raycaster,scores={bossfight=1..}] run playsound custom.bossfight.pickle.yodel master @a ~ ~ ~ 0.5 1
execute at @e[scores={bossfight=1..},tag=raycaster] run summon minecraft:item_display ^ ^ ^0.1 {NoGravity:1b,billboard:"center",Tags:["pickle"],brightness:{sky:15,block:15},item:{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:17}}}
execute at @e[scores={bossfight=1..},tag=raycaster] at @e[tag=pickle,limit=1,sort=nearest] run tp @e[tag=pickle,sort=nearest,limit=1] ~ ~ ~ facing entity @e[tag=raycaster,limit=1]
execute at @e[scores={bossfight=1..},tag=raycaster] at @e[tag=pickle,limit=1,sort=nearest] run tp @e[tag=pickle,sort=nearest,limit=1] ~ ~0.75 ~
execute at @e[tag=pickle] run tp @e[tag=pickle,limit=1,sort=nearest] ^ ^ ^-3.25
execute at @e[tag=pickle] run scoreboard players add @e[tag=pickle,sort=nearest,limit=1] bossfight 1

execute at @e[tag=pickle] unless block ~ ~ ~ #raycast run tag @e[tag=pickle,sort=nearest,limit=1] add expickle
execute at @e[tag=pickle,scores={bossfight=70..}] run tag @e[tag=pickle,sort=nearest,limit=1] add expickle
execute at @e[tag=pickle,scores={bossfight=1..}] if entity @e[distance=..2,tag=!pickle,type=!armor_stand,type=!item_display] run tag @e[tag=pickle,sort=nearest,limit=1] add expickle
execute at @e[tag=expickle] run function ag:bossfight/projectile/pickle
execute at @e[tag=expickle] run kill @e[tag=expickle,sort=nearest,limit=1]
scoreboard players set @e[tag=raycaster,scores={bossfight=1..}] bossfight 0