scoreboard objectives add relogio trigger
scoreboard players enable @a relogio

execute as @a[scores={relogio=1..}] run scoreboard players operation %tempo relogio = @s relogio
scoreboard players reset @a[scores={relogio=1..}] relogio

scoreboard players add %tempo relogio 1
execute if score %tempo relogio = %tempo_max relogio run say ola!
execute if score %tempo relogio = %tempo_max relogio run scoreboard players set %tempo relogio 0

trigger relogio set 10