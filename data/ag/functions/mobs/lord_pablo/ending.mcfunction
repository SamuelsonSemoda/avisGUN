execute if score .pablo2 game matches 0..1200 run scoreboard players add .pablo2 game 1
execute if score .pablo2 game matches 1200.. run scoreboard players set .pablo2 game -1

execute at @a if score .pablo2 game matches 2 run playsound minecraft:custom.finale master @a ~ ~ ~ 1 1
execute at @a if score .pablo2 game matches 400 run playsound minecraft:custom.finale master @a ~ ~ ~ 1 1
execute at @a if score .pablo2 game matches 0..20 run kill @e[tag=lord_pablo]
execute at @a if score .pablo2 game matches 0..40 run particle poof 913 -28 14 1 1 1 1 100 force
execute at @a if score .pablo2 game matches 40 run summon lightning_bolt 913 -28 14
execute at @a if score .pablo2 game matches 0..120 run tp @a[scores={checkpoint=1}] ~ ~ ~ facing entity @e[tag=lord_pablo,limit=1,sort=nearest]
execute if score .pablo2 game matches 40 run summon item_display 913 -28 14 {NoGravity:1b,billboard:"vertical",Tags:["lord_pablo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:15}}}

execute at @e[tag=lord_pablo] if score .pablo2 game matches 120..320 run tp @e[tag=lord_pablo] ~ ~-0.085 ~
execute at @a if score .pablo2 game matches 120..320 run tp @a ~ ~ ~ facing entity @e[tag=lord_pablo,limit=1]

execute at @a if score .pablo2 game matches 350 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"You did it, FINALLY!","color":"white","bold":false}]
execute at @a if score .pablo2 game matches 450 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"Do you even know what have you accomplished?","color":"white","bold":false}]
execute at @a if score .pablo2 game matches 600 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"I am so proud of you, thank you Avisa, and I believe we shall meet again...","color":"white","bold":false}]
execute at @a if score .pablo2 game matches 800 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"However, I have other things to do, stay safe, god bless you, GOODBYE!","color":"white","bold":false}]

execute at @e[tag=lord_pablo] if score .pablo2 game matches 950..1100 run particle poof ~ ~ ~ 1 1 1 1 100 force
execute at @e[tag=lord_pablo] if score .pablo2 game matches 1100 run summon lightning_bolt ~ ~ ~
execute at @e[tag=lord_pablo] if score .pablo2 game matches 1100 run kill @e[tag=lord_pablo]

execute if score .pablo2 game matches 1199.. run scoreboard players set @a[scores={checkpoint=4}] checkpoint 5
execute if score .pablo2 game matches 1199.. run tp @a[scores={checkpoint=5}] 7 -58 3 180.0 -20.0