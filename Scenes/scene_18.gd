extends Node2D

func _ready() -> void:
	AudioPlayer.play_music_level()
	$CharacterBody2D.can_move = true
