extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AudioPlayer.play_foxmusic()
	$Text1.visible = true
	$CharacterBody2D.can_move = true
