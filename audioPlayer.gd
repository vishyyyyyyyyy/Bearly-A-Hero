extends AudioStreamPlayer

const level_music = preload("res://music/8-bit-video-game-background-music-loop-wood-368532.mp3")
const foxmusic = preload("res://music/suspense-gamevideo-track-339286.mp3")
const palacemusic = preload("res://music/8-bit-background-music-for-arcade-game-come-on-mario-164702.mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(level_music)


# Specific functions for each track
func play_foxmusic():
	_play_music(foxmusic)

func play_palacemusic():
	_play_music(palacemusic)
