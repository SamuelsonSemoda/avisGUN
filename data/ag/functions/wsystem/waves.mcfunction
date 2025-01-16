scoreboard players set @a wkill 0
execute at @a run playsound ui.button.click master @a ~ ~ ~ 1 0
execute if entity @a[scores={ws=1}] run function ag:wsystem/waves/1
execute if entity @a[scores={ws=3}] run function ag:wsystem/waves/2
execute if entity @a[scores={ws=5}] run function ag:wsystem/waves/3
execute if entity @a[scores={ws=7}] run function ag:wsystem/waves/final

execute if entity @a[scores={ws=9}] run function ag:wsystem/waves/end