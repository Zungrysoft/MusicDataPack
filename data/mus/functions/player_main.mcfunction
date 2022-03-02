# Grab data from the nearest marker
execute store result score @s song_id run data get entity @e[type=minecraft:marker,sort=nearest,name="SongMarker",limit=1,distance=0..15] data.SongId

# If the player respawns from dying, set their music type to zero
# TODO

# If the player's song has changed, play the new song
execute unless score @s song_id = @s song_id_prev run function mus:play_song

# If the loop period is over, play the song again
scoreboard players remove @s song_duration 1
execute if score @s song_duration matches 0 run function mus:play_song
