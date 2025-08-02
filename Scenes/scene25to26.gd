extends Area2D

var has_player_entered = false


# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		has_player_entered = true
		print("Player entered trigger area")
		change_scene()

func _on_body_exited(body):
	if body.name == "CharacterBody2D":
		has_player_entered = false
		print("Player left trigger area")
		
func change_scene():
	if has_player_entered:
		get_tree().change_scene_to_file("res://Scenes/scene26.tscn")
