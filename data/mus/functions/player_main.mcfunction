# Grab data from the nearest marker
execute store result score temp value run data get entity @e[type=minecraft:marker,sort=nearest,name="SongMarker",limit=1,distance=0..15] data.SongId
execute if score temp value matches 1.. run scoreboard players operation @s song_id = temp value

# If the player dies, set their death state
execute if score @s music_death matches 1.. run function mus:player_death

# If the player respawns, reset their music state
execute if score @s death_state matches 1.. run function mus:player_respawn_check

# If the player's song has changed, play the new song
execute unless score @s song_id = @s song_id_prev run function mus:play_song

# If the loop period is over, play the song again
scoreboard players remove @s song_duration 1
execute if score @s song_duration matches 0 run function mus:play_song
