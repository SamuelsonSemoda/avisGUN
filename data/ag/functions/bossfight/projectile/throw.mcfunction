#PICKLES
execute if score .bossbar bossfight matches 55..100 if score .clock bossfight matches 0..600 if score .projectile bossfight matches 0..60 run scoreboard players add .projectile bossfight 1
execute if score .bossbar bossfight matches 55..100 if score .clock bossfight matches 0..600 if score .projectile bossfight matches 60.. run scoreboard players set .projectile bossfight 0 
execute if score .bossbar bossfight matches 5..50 if score .clock bossfight matches 0..600 if score .projectile bossfight matches 0..40 run scoreboard players add .projectile bossfight 1
execute if score .bossbar bossfight matches 5..50 if score .clock bossfight matches 0..600 if score .projectile bossfight matches 40.. run scoreboard players set .projectile bossfight 0 

execute if score .bossbar bossfight matches 55..100 if score .projectile bossfight matches 30 unless score .clock bossfight matches ..100 run scoreboard players add @e[tag=raycaster] bossfight 1
execute if score .bossbar bossfight matches 5..50 if score .projectile bossfight matches 30 unless score .clock bossfight matches ..100 run scoreboard players add @e[tag=raycaster] bossfight 1