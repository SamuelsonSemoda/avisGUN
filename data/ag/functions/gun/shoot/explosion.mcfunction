#CUCUMBA EXPLOSION
execute unless entity @e[tag=cucumba,tag=avisacharge] run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0.1 100
execute unless entity @e[tag=cucumba,tag=avisacharge] run damage @e[type=!player,tag=!explosion,distance=..5,sort=nearest,limit=1] 20 player_explosion by @a[limit=1]
execute unless entity @e[tag=cucumba,tag=avisacharge] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 1
stopsound @a master custom.gun.shoot

#AVISA EXPLOSION
execute if entity @e[tag=cucumba,tag=avisacharge] run particle minecraft:sonic_boom ~ ~1.5 ~ 1 0 0.75 1 100
execute if entity @e[tag=cucumba,tag=avisacharge] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 10 2
execute at @e[tag=cucumba,tag=avisacharge] if entity @e[sort=nearest,distance=..3.5,tag=lordsam] run scoreboard players set .damage bossfight 0
execute at @e[tag=cucumba,tag=avisacharge] if entity @e[sort=nearest,distance=..3.5,tag=lordsam] run scoreboard players remove .bossbar bossfight 5
execute at @e[tag=cucumba,tag=avisacharge] if entity @e[sort=nearest,distance=..3.5,tag=lordsam] run data merge entity @e[tag=lordsam,limit=1] {item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:20}}}
execute at @e[tag=cucumba,tag=avisacharge] if entity @e[sort=nearest,distance=..3.5,tag=lordsam] run scoreboard players set .damageface bossfight 0