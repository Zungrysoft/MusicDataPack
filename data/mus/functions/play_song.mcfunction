scoreboard players operation @s song_id_prev = @s song_id
stopsound @s record

# ==================================================================
# Copy these three lines of code below for each song you want to add
#     Set song_duration to -1 if you don't want the song to loop
# ==================================================================
execute if score @s song_id matches 1 run playsound musicplayer.demosong1 record @s ~ ~ ~ 1 1 1
execute if score @s song_id matches 1 run scoreboard players set @s song_duration 200
execute if score @s song_id matches 1 run say PLAYING SONG WITH ID 1

execute if score @s song_id matches 2 run playsound musicplayer.demosong2 record @s ~ ~ ~ 1 1 1
execute if score @s song_id matches 2 run scoreboard players set @s song_duration 200
execute if score @s song_id matches 2 run say PLAYING SONG WITH ID 2
