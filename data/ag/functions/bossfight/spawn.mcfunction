execute if score .spawn bossfight matches 300.. run scoreboard players set .spawn bossfight -1
execute if score .spawn bossfight matches 0..300 run scoreboard players add .spawn bossfight 1

execute at @a if score .spawn bossfight matches 1 run playsound minecraft:custom.bossfight.spawn voice @a ~ ~ ~ 1 1

execute at @a if score .spawn bossfight matches 1 run title @a actionbar {"text":""}
execute if score .spawn bossfight matches 0..300 run function ag:bossfight/cutscenes/intro

execute if score .spawn bossfight matches 100..200 run particle minecraft:portal 937 -41 14 0.2 0 0.2 3 75 force
execute if score .spawn bossfight matches 225 run particle minecraft:trial_spawner_detection 937 -41 14 0.2 0 0.2 1 1000 force
execute if score .spawn bossfight matches 230 run summon item_display 937 -41 14 {transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f]},NoGravity:1b,CustomNameVisible:0b,view_range:5f,billboard:"center",teleport_duration:10,Tags:["lordsam","raycaster"],brightness:{sky:15,block:15},item:{id:"minecraft:nether_star",Count:1b,tag:{CustomModelData:15}}}
execute at @a if score .spawn bossfight matches 230 run playsound minecraft:custom.bossfight.voicelines.spawn master @a ~ ~ ~ 2 1
execute at @a if score .spawn bossfight matches 299..300 run scoreboard players set .clock bossfight 50
execute at @a if score .spawn bossfight matches 299..300 run scoreboard players set .bossbar bossfight 100
execute at @a if score .spawn bossfight matches 299..300 run scoreboard players set .bossbar bossfight 100
execute at @a if score .spawn bossfight matches 299..300 run bossbar set minecraft:bossfight visible true
execute if score .spawn bossfight matches 299..300 run scoreboard players set .music bossfight 0