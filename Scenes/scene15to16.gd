extends Area2D

var has_player_entered := false

func _on_body_entered(body):
	if body.name == "CharacterBody2D4":
		has_player_entered = true
		print("Player entered trigger area")

func _on_body_exited(body):
	if body.name == "CharacterBody2D4":
		has_player_entered = false
		print("Player left trigger area")

func try_exit():
	if has_player_entered:
		get_tree().change_scene_to_file("res://Scenes/scene16.tscn")
