execute store result score .sounds bossfight run random value 1..6

execute at @a if score .sounds bossfight matches 1 run playsound minecraft:custom.bossfight.voicelines.brainrot voice @a ~ ~ ~ 5 1
execute at @a if score .sounds bossfight matches 2 run playsound minecraft:custom.bossfight.voicelines.sassy voice @a ~ ~ ~ 5 1
execute at @a if score .sounds bossfight matches 3 run playsound minecraft:custom.bossfight.voicelines.shivers voice @a ~ ~ ~ 5 1
execute at @a if score .sounds bossfight matches 4 run playsound minecraft:custom.bossfight.voicelines.nword voice @a ~ ~ ~ 5 1
execute at @a if score .sounds bossfight matches 5 run playsound minecraft:custom.bossfight.voicelines.youwontgetme voice @a ~ ~ ~ 5 1
execute at @a if score .sounds bossfight matches 6 run playsound minecraft:custom.bossfight.voicelines.doctorwho voice @a ~ ~ ~ 5 1

execute if score .sounds bossfight matches 1..6 run scoreboard players set .sounds bossfight 0