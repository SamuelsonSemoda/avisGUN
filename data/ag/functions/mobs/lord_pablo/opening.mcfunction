execute if score .pablo game matches 0..1200 run scoreboard players add .pablo game 1
execute if score .pablo game matches 1200.. run scoreboard players set .pablo game -1

execute at @a if score .pablo game matches 2 run playsound minecraft:custom.pablo master @a ~ ~ ~ 1 1
execute at @a if score .pablo game matches 0..20 run tag @a remove gun
execute at @a if score .pablo game matches 0..20 run clear @a
execute at @a if score .pablo game matches 0..20 run fill -87 -50 12 -69 -36 12 minecraft:barrier replace air
execute at @a if score .pablo game matches 1100..1200 run fill -87 -50 12 -69 -36 12 minecraft:air replace barrier
execute at @a if score .pablo game matches 0..20 run kill @e[tag=lord_pablo]
execute at @a if score .pablo game matches 0..40 run particle poof -77.75 -23 16.25 1 1 1 1 100 force
execute at @a if score .pablo game matches 40 run summon lightning_bolt -77.75 -23 16.25
execute at @a if score .pablo game matches 0..120 run tp @a[scores={checkpoint=1}] ~ ~ ~ facing entity @e[tag=lord_pablo,limit=1,sort=nearest]
execute if score .pablo game matches 40 run summon item_display -77.75 -23 16.25 {NoGravity:1b,billboard:"vertical",Tags:["lord_pablo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:15}}}

execute at @e[tag=lord_pablo] if score .pablo game matches 120..320 run tp @e[tag=lord_pablo] ~ ~-0.13 ~

execute at @a if score .pablo game matches 350 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"Hello fellow citizen!","color":"white","bold":false}]
execute at @a if score .pablo game matches 450 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"Wait, you must be Avisa!","color":"white","bold":false}]
execute at @a if score .pablo game matches 550 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"I've heard about you alot, and also someone's got a birthday right, well, too late to mention...","color":"white","bold":false}]
execute at @a if score .pablo game matches 650 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"However this is not important now, I believe you must noticed many odd things happening lately...","color":"white","bold":false}]
execute at @a if score .pablo game matches 800 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"The Brain Rot Apocalypse... yes, Lord Sam has taken over the whole world and he's brainwashing every human being!","color":"white","bold":false}]
execute at @a if score .pablo game matches 900 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"You need to save us, you're the only one that is not insane!","color":"white","bold":false}]
execute at @a if score .pablo game matches 1000 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"Of course, you can't go against him with bare hands, here take this.","color":"white","bold":false}]
execute at @a if score .pablo game matches 1100 run tellraw @a [{"text":"Lord Pablo: ","color":"gold","bold":true},{"text":"He's too powerful, the gate to his abomination must be somewhere in this street, be careful, hope to see you soon!","color":"white","bold":false}]

execute if score .pablo game matches 1050 run tag @a add gun
execute at @a if score .pablo game matches 1050 run playsound minecraft:custom.gun.achieve master @a ~ ~ ~ 1 1

execute at @e[tag=lord_pablo] if score .pablo game matches 1150..1200 run particle poof ~ ~ ~ 1 1 1 1 100 force
execute at @e[tag=lord_pablo] if score .pablo game matches 1199.. run summon lightning_bolt ~ ~ ~
execute at @e[tag=lord_pablo] if score .pablo game matches 1199.. run kill @e[tag=lord_pablo]

execute if entity @a[x=-79,y=-50,z=32,distance=..9,scores={checkpoint=1},tag=!pablo] run scoreboard players set .pablo game 0
execute if entity @a[x=-79,y=-50,z=32,distance=..9,scores={checkpoint=1}] run tag @a add pablo