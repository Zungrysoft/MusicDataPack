Use this command to summon a song marker:
/summon minecraft:marker ~ ~ ~ {CustomName:"\"SongMarker\"",data:{SongId:1}}

Song markers have a radius of 15 blocks. (This can be changed in player_main.mcfunction)

To add a new song to the pack:
	- Add new code in play_song.mcfunction (instructions within)
	- Put the song file in the resource pack under sounds/musicplayer
	- Add a new entry to sounds.json in the resource pack
