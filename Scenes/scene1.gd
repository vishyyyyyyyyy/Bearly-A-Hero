extends Node2D

func _ready():
	AudioPlayer.play_music_level()
	$Timer.start()
	$CharacterBody2D.visible = false



func show_text_and_tile():

	$"S1-text1".visible = true

	


func _on_timer_timeout():
	$"S1-text1".visible = false
	$"S5-text2".visible = false
	$CharacterBody2D.visible = true
	$CharacterBody2D.can_move = true
	
