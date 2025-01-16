execute if score .delay gun matches 1..60 run item replace entity @a weapon.mainhand with minecraft:gold_nugget{display:{Name:'[{"text":"","italic":false}]'},CustomModelData:15}
execute if score .delay chargegun matches 1..60 run item replace entity @a weapon.mainhand with minecraft:gold_nugget{display:{Name:'[{"text":"","italic":false}]'},CustomModelData:15}

execute if score @a[limit=1] gun matches 1.. run scoreboard players set .delay gun 60
execute if score .delay gun matches 1..60 run scoreboard players remove .delay gun 1

execute if score @a[limit=1] chargegun matches 1.. run scoreboard players set .delay chargegun 60
execute if score .delay chargegun matches 1..60 run scoreboard players remove .delay chargegun 1

execute at @a if score .delay gun matches 1 run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 0.75 2
execute if score .delay gun matches 0 unless entity @a[tag=cucumbacharge] if entity @a[tag=gun] run item replace entity @a weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"","italic":false}]'},CustomModelData:15}

execute if score .delay chargegun matches 0 run item replace entity @a[tag=cucumbacharge,tag=gun] weapon.mainhand with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"","italic":false}]'},CustomModelData:15}
execute if score .clock bossfight matches 350..352 run tag @a remove cucumbacharge
execute if score .delay chargegun matches 30 run tag @a remove cucumbacharge