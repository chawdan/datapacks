kill @e[type=item,nbt={Item:{id:"minecraft:leather",Count:4b}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}},distance=..1,limit=1]
kill @s

function mf7:livro

playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 2
particle minecraft:dragon_breath ~ ~0.1 ~ 0.25 0.25 0.25 0.005 30