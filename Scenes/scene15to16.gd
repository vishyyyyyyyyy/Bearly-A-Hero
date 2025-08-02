extends Area2D

var has_player_entered := false

var textdone = false

func text_done():
	textdone = true
	change_scene()

func _on_body_entered(body):
	if body.name == "CharacterBody2D4":
		has_player_entered = true
		print("Player entered trigger area")
		change_scene()

func _on_body_exited(body):
	if body.name == "CharacterBody2D4":
		has_player_entered = false
		print("Player left trigger area")

func change_scene():
	if has_player_entered and textdone:
		get_tree().change_scene_to_file("res://Scenes/scene16.tscn")
