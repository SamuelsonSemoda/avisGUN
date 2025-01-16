summon zombie ~ ~1 ~ {OnGround:1b,PersistenceRequired:1b,Tags:["sam"],active_effects:[{id:"invisibility",duration:999999999,amplifier:100,show_particles:0b}],ArmorItems:[{},{},{},{id:iron_nugget,tag:{CustomModelData:15},Count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @a[scores={checkpoint=3}] run effect give @e[tag=sam,type=zombie] speed infinite 3 true
execute if entity @a[scores={checkpoint=3}] run effect give @e[tag=sam,type=zombie] speed infinite 3 true
effect give @e[tag=sam,type=zombie] strength infinite 1 true
effect give @e[tag=sam,type=zombie] slow_falling infinite 0 true