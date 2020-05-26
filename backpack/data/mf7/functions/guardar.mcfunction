function mf7:antibug/funil
kill @e[nbt={Item:{tag:{mf7:1b}}}]
function mf7:livro
execute if data entity @s Items[{Slot:26b}] unless data entity @s Items[{Slot:26b,Count:1b,tag:{mf7:1b}}] run function mf7:antibug/drop_fechar
tag @e[type=minecraft:item,tag=mf7_mochila,limit=1,sort=nearest] add mf7_mochila_fechada
data modify entity @e[tag=mf7_mochila_fechada,limit=1,sort=nearest] Item.tag.Items set from entity @s Items
data modify entity @e[tag=mf7_mochila_fechada,limit=1,sort=nearest] Item.tag.display.Name set from entity @s CustomName
data modify entity @e[tag=mf7_mochila_fechada,limit=1,sort=nearest] Item.tag.Items[{Slot:26b}] merge value {id:"minecraft:structure_void",Count:1b,tag:{display:{Name:"{\"text\":\"Close\",\"color\":\"red\",\"italic\":false}"},mf7:1b}}
playsound minecraft:block.barrel.close master @a ~ ~ ~ 0.6 1.3
clear @a minecraft:structure_void{mf7:1b}
#
tag @e[tag=mf7_mochila_fechada] remove mf7_mochila_fechada
tp @s ~ -100 ~
data remove entity @s Items
kill @s
