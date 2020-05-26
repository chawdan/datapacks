# Gerar
execute as @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:leather",Count:4b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}},distance=..1] run function mf7:gerar

# Abrir
execute as @e[type=item,nbt={Item:{tag:{mf7:0b}}},tag=!mf7_mochila] at @s run function mf7:abrir

#Fechar
execute as @e[type=chest_minecart,tag=mf7_mochilaAberta] at @s unless data entity @s Items[{Slot:26b,Count:1b,tag:{mf7:1b}}] run function mf7:guardar

# Anti-bug
execute as @e[type=item,nbt={Item:{tag:{mf7:1b}}}] at @s as @e[type=armor_stand,tag=mf7_mochilaArmStand] unless data entity @s Passengers run function mf7:antibug/destruido
execute as @e[type=armor_stand,tag=mf7_mochilaArmStand] unless data entity @s Passengers run kill @s
execute as @e[type=chest_minecart,tag=mf7_mochilaAberta] at @s if data entity @s Items[{tag:{mf7:0b}}] run function mf7:antibug/drop_mochila
clear @a minecraft:structure_void{mf7:1b}
kill @e[type=item,nbt={Item:{tag:{mf7:1b}}}]