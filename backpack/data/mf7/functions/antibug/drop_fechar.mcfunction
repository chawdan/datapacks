loot spawn ~ ~ ~ loot mf7:drop
data modify entity @e[nbt={Item:{tag:{mf7:-1b}}},limit=1,sort=nearest] Item merge from entity @s Items[{Slot:26b}]
data remove entity @e[nbt={Item:{tag:{mf7:-1b}}},limit=1,sort=nearest] Item.tag.mf7
playsound minecraft:block.dispenser.dispense master @a
