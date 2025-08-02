extends Area2D

var entered = false

func _on_body_entered(body: CharacterBody2D) -> void:
	if not entered:  # Prevent calling multiple times
		entered = true
		get_tree().change_scene_to_file("res://Scenes/scene20.tscn")

func _on_body_exited(body: CharacterBody2D) -> void:
	entered = false
