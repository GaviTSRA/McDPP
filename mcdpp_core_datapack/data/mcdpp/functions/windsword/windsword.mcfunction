execute at @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{WindSword:1}}}] unless entity @e[tag=WindSwordArmorstand,distance=0..1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["WindSwordArmorstand"]}

execute at @e[type=minecraft:armor_stand, tag=WindSwordArmorstand] unless entity @a[distance=..5] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace barrier
execute at @e[type=minecraft:armor_stand, tag=WindSwordArmorstand] unless entity @a[distance=..5] run particle minecraft:ash ~ ~ ~ 1 0 1 0.05 100 force
execute as @e[type=minecraft:armor_stand, tag=WindSwordArmorstand] at @e[type=minecraft:armor_stand, tag=WindSwordArmorstand] unless entity @a[distance=..6] run kill @s

execute at @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b,tag:{WindSword:1}}}] run particle minecraft:cloud ~ ~-0.7 ~ 1 0 1 0.05 5 force

execute at @e[type=minecraft:armor_stand, tag=WindSwordArmorstand] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 barrier replace air
