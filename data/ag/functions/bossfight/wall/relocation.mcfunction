fill 917 -46 -4 951 -42 27 air replace minecraft:green_terracotta
execute if score .wall bossfight matches 1 run clone from overworld 869 -60 16 867 -62 18 922 -46 -4
execute if score .wall bossfight matches 2 run clone from overworld 869 -60 16 867 -62 18 917 -46 25
execute if score .wall bossfight matches 3 run clone from overworld 869 -60 16 867 -62 18 948 -46 24
execute if score .wall bossfight matches 4 run clone from overworld 869 -60 16 867 -62 18 948 -46 0
execute at @a run playsound minecraft:block.grindstone.use master @a ~ ~ ~ 10 0