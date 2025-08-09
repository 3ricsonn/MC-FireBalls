execute as @e[type=minecraft:snowball, nbt={Item:{components:{"minecraft:custom_data":{fireball:1b}}}}, tag=!processed] at @s run function fireball:throw

execute as @e[type=minecraft:snowball, nbt={Item:{components:{"minecraft:custom_data":{fireball:1b}}}}, tag=processed] at @s run function fireball:move

# cleaning orphan fireballs
execute as @e[type=minecraft:fireball,tag=player] at @s unless entity @e[type=minecraft:snowball, nbt={Item:{components:{"minecraft:custom_data":{fireball:1b}}}}, distance=..1, limit=1] run kill @s