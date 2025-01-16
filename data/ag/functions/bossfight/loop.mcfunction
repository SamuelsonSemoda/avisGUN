#BOSSFIGHT FUNCTION
execute if score .clock bossfight matches 600.. run scoreboard players set .clock bossfight 0
execute if score .clock bossfight matches 0..600 run scoreboard players add .clock bossfight 1

#execute store result score .random bossfight run random value 1..5

execute if score .clock bossfight matches 1 run function ag:bossfight/projectile/avisa
execute at @a if score .clock bossfight matches 1 run playsound minecraft:custom.bossfight.avisa master @a ~ ~ ~ 0.5 1
execute if score .clock bossfight matches 200 run kill @e[tag=avisa,type=item]

#BOSSBAR
execute store result bossbar minecraft:bossfight value run scoreboard players get .bossbar bossfight
execute if score .damage bossfight matches 0..10 run bossbar set minecraft:bossfight color red
execute unless score .damage bossfight matches 0..10 run bossbar set minecraft:bossfight color white
execute if score .damage bossfight matches 10.. run scoreboard players set .damage bossfight -1
execute if score .damage bossfight matches 0..10 run scoreboard players add .damage bossfight 1

#TELEPORT
execute if score .clock bossfight matches 300 if score .bossbar bossfight matches 5..50 run execute store result score .random bossfight run random value 1..5
execute if score .clock bossfight matches 300 if score .bossbar bossfight matches 5..50 run function ag:bossfight/teleport
execute if score .bossbar bossfight matches 0 run tp @e[tag=lordsam] 937 -41 14

#MUSIC
execute at @a if score .clock bossfight matches 0..600 if score .music bossfight matches 1 run playsound minecraft:custom.bossfight.music master @a ~ ~ ~ 0.3 1
execute if score .clock bossfight matches 0..600 if score .music bossfight matches 0..1200 run scoreboard players add .music bossfight 1
execute if score .clock bossfight matches 0..600 if score .music bossfight matches 1200.. run scoreboard players set .music bossfight 0

#FACES
execute if score .clock bossfight matches 450 run function ag:bossfight/misc/faces
execute at @a if score .damageface bossfight matches 2 unless score .bossbar bossfight matches 50 unless score .bossbar bossfight matches ..0 run playsound minecraft:custom.bossfight.voicelines.damage voice @a ~ ~ ~ 2 1
execute if score .damageface bossfight matches 0..15 run scoreboard players add .damageface bossfight 1
execute if score .damageface bossfight matches 15.. run function ag:bossfight/misc/faces
execute if score .damageface bossfight matches 15.. run scoreboard players set .damageface bossfight -1

#SPAWN
execute if entity @a[scores={checkpoint=2..3}] run function ag:bossfight/start
execute if entity @a[scores={checkpoint=2..3}] run function ag:bossfight/spawn

#DEATH
execute if score .bossbar bossfight matches 5 run scoreboard players set .defeat bossfight 0
execute if score .bossbar bossfight matches ..0 run scoreboard players set .clock bossfight -1
execute if score .bossbar bossfight matches ..0 run function ag:bossfight/defeat

#SOUNDS
execute at @a unless entity @a[tag=halflife] if score .clock bossfight matches 0..300 if score .bossbar bossfight matches 50 run playsound minecraft:custom.bossfight.voicelines.halflife voice @a ~ ~ ~ 1 1
execute at @a if score .clock bossfight matches 0..300 if score .bossbar bossfight matches 50 run tag @a add halflife
execute at @a if score .clock bossfight matches 10 run playsound minecraft:custom.bossfight.voicelines.projectile voice @a ~ ~ ~ 10 1
execute at @a if score .clock bossfight matches 450 run function ag:bossfight/misc/sounds

#PROJECTILE
execute if entity @a[scores={checkpoint=3}] run function ag:bossfight/projectile/main
execute if entity @a[scores={checkpoint=3}] run function ag:bossfight/projectile/throw
execute at @e[tag=lordsam] positioned ~ ~-1 ~ if score .clock bossfight matches 300 if score .bossbar bossfight matches 5..50 run function ag:mobs/sam/summon

#WALL
execute if score .clock bossfight matches 300 if score .bossbar bossfight matches 5..50 run execute store result score .wall bossfight run random value 1..4
execute if score .clock bossfight matches 300 if score .bossbar bossfight matches 5..50 run function ag:bossfight/wall/relocation

execute at @a if entity @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:15}}]},scores={checkpoint=3}] run effect give @a speed 1 1 true
execute at @a if entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:18}}]},scores={checkpoint=3}] run playsound custom.gun.charge master @a ~ ~ ~ 0.75 1
tag @a[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:18}}]},scores={checkpoint=3}] add cucumbacharge
execute if entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:1b,tag:{CustomModelData:18}}]},scores={checkpoint=3}] run clear @a gold_nugget{CustomModelData:18}