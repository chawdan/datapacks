summon minecraft:armor_stand ~ ~ ~ {NoGravity:0b,DisabledSlots:63,Small:1b,PersistenceRequired:1b,Invisible:1b,Invulnerable:1b,Tags:["mf7_mochilaArmStand"],Passengers:[{id:"minecraft:chest_minecart",CustomName:"{\"text\":\"Mochila\"}",CustomDisplayTile:1b,DisplayOffset:5,Tags:["mf7_mochilaAberta"],DisplayState:{Name:"minecraft:barrel"}}]}
data modify entity @e[tag=mf7_mochilaAberta,limit=1,sort=nearest] CustomName set from entity @s Item.tag.display.Name
data modify entity @e[tag=mf7_mochilaAberta,limit=1,sort=nearest] Items set from entity @s Item.tag.Items
data modify entity @s SelectedItem.tag.Items set from entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest] Items
playsound minecraft:block.barrel.open master @a ~ ~ ~ 0.6 1.3
tp @e[tag=mf7_mochilaArmStand,limit=1,sort=nearest] @p
kill @s
