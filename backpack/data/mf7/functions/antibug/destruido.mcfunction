function mf7:livro
data modify entity @e[type=item,tag=mf7_mochila,limit=1,sort=nearest] Item.tag.display.Name set from entity @e[type=item,nbt={Item:{id:"minecraft:minecart",Count:1b,tag:{display:{}}}},limit=1,sort=nearest] Item.tag.display.Name
execute as @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:chest",Count:1b}}] run kill @s
execute as @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:minecart",Count:1b}}] run kill @s
kill @s
