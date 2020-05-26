loot spawn ~ ~ ~ loot mf7:drop
data modify entity @e[nbt={Item:{tag:{mf7:-1b}}},limit=1,sort=nearest] Item merge from entity @s Items[{tag:{mf7:0b}}]
tag @e[type=minecraft:item,limit=1,sort=nearest] add mf7_mochila
data remove entity @s Items[{tag:{mf7:0b}}]
playsound minecraft:block.dispenser.dispense master @a
